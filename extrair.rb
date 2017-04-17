#!/usr/bin/env ruby

cwd = File.dirname(__FILE__)
$LOAD_PATH.unshift cwd

require 'find'
require 'ruby-progressbar'
require 'sequel'
require 'yaml'
require 'registro'
require 'db_tools'
require 'utils'

def mostrar_uso
  puts 'Uso: ruby extrair.rb <nome_bd> <caminho_sped>'
  exit 1
end

sgbd = ENV['SGBD_EXTRACAO'] || 'postgres' # mssql|postgres
config = YAML.load_file('config/database.yml')[sgbd]

nome_bd = ARGV.shift
caminho = ARGV.select {|arg| File.file? arg or File.directory? arg}[0]

if caminho.nil?
  STDERR.puts 'Caminho inválido'
  mostrar_uso
end

arquivos_sped = Find.find(caminho).select {|f| Utils.sped_file? f}
num_arquivos = arquivos_sped.size

if num_arquivos == 0
  STDERR.puts 'Nenhum arquivo no formato SPED foi encontrado'
  exit 1
end

layout = Utils.get_layout(arquivos_sped.first)
versao = Utils.get_version arquivos_sped.first
versoes_validas = Registro.versoes[layout]
unless versoes_validas.include? versao
  STDERR.puts "Versão #{versao} não suportada para o layout '#{layout}'\nAs versões suportadas são: #{versoes_validas.join(', ')}"
  exit 1
end

if nome_bd
  puts "SPED #{layout.to_s.capitalize} v#{versao}"

  bd_sped = DbTools.new(config, nome_bd, sgbd.to_sym, layout, versao)

  if not bd_sped.exists?
    puts 'Criando banco de dados...'
    bd_sped.create
    puts 'Banco de dados criado.'
  else
    puts 'O banco de dados já existe. A carga será complementada.'
  end

  config[:database] = nome_bd
else
  STDERR.puts 'Informe o nome do banco de dados'
  mostrar_uso
end

chaves = {}
cont = 0

Sequel.connect(config) do |db|
  arquivos_sped.each do |f|
    puts ("\n[%03d/%03d] %s" % [cont + 1, num_arquivos, File.basename(f)])

    total_linhas = Utils.count_lines f

    progressbar = ProgressBar.create(:title => 'Progresso', :format => '[%B] %p%%')

    cnpj = Utils.get_cnpj f, layout

    sped = File.open(f, 'r:CP850:UTF-8')

    db.transaction do
      sped.each_line do |linha|
        begin
          registro = Registro.new linha, layout, versao

          if layout == :contrib
            cnpj = '' if registro.pai == '0001'
            cnpj = registro.cnpj if registro.nome.end_with? '010' or registro.nome == '0140'
          end

          tabela = "reg_#{registro.nome}".downcase.to_sym
          id = chaves[registro.nome] || Integer(db[tabela].max(:id) || 0)
          id += 1
          chaves[registro.nome] = id

          id_pai = chaves[registro.pai] || (layout == :contrib ? 1 : 0)

          valores = {:id => id, :id_pai => id_pai, :cnpj_pai => cnpj}.merge registro.to_h

          db[tabela].insert valores

          progresso = ((sped.lineno * 100) / total_linhas).round
          if progresso > progressbar.progress
            progressbar.progress = progresso
          end
        rescue
          progressbar.stop
          STDERR.puts linha
          raise
        end
      end
    end

    sped.close
    cont += 1
    progressbar.finish
  end

  puts "\n#{cont} arquivo(s) processado(s)."
end