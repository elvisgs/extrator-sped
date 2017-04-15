#!/usr/bin/env ruby

require 'find'
require 'ruby-progressbar'
require 'sequel'
require 'yaml'
require_relative 'registro'
require_relative 'db_creator'
require_relative 'utils'

def mostrar_uso
  puts 'Uso: ruby extrair.rb <nome_bd> [fiscal|contrib] [caminho_sped]'
  exit 1
end

$cwd = File.dirname(__FILE__)

$sgbd = ENV['SGBD_EXTRACAO'] || 'postgres' # mssql|postgres
$config = YAML.load_file('config/database.yml')[$sgbd]
$data_dir = File.absolute_path($cwd + '\data').gsub('/', '\\')

$nome_bd = ARGV.shift
$layout = (ARGV.shift || 'fiscal').to_sym
$caminho = ARGV.shift

if not $caminho.nil? and not (File.file?($caminho) or File.directory?($caminho))
  puts 'Caminho invalido'
  mostrar_uso
end

$versao = Utils.detect_version(Find.find($caminho).first(2).last)
versoes_validas = Registro.versoes[$layout]
unless versoes_validas.include? $versao
  puts "Versão #{$versao} é inválida para o layout '#{$layout}'. As versões válidas são: #{versoes_validas.join(', ')}"
  exit 1
end

if $nome_bd
  bd_sped = DbCreator.new($config, $nome_bd, $sgbd.to_sym, $layout, $versao)

  if not bd_sped.exists?
    puts 'Criando banco de dados...'
    bd_sped.create
    puts 'Banco de dados criado.'
  else
    puts 'O banco de dados já existe. A carga será complementada.'
  end

  $config[:database] = $nome_bd
else
  puts 'Informe o nome do banco de dados'
  mostrar_uso
end

$chaves = {}
$cont = 0

Sequel.connect($config) do |db|
  $caminho ||= $cwd + '/sped'
  num_arquivos = File.file?($caminho) ? 1 : Dir.glob($caminho + '/*.txt').count

  Find.find($caminho).each do |f|
    next if not File.file?(f) or File.zero?(f)

    puts ("\n[%03d/%03d] %s" % [$cont + 1, num_arquivos, File.basename(f)])

    total_linhas = Utils.count_lines f

    progressbar = ProgressBar.create(:title => 'Progresso', :format => '[%B] %p%%')

    cnpj = Utils.detect_cnpj f, $layout

    sped = File.open(f, 'r:CP850:UTF-8')

    linha = sped.readline

    next if sped.eof?

    db.transaction do
      begin
        progresso = ((sped.lineno * 100) / total_linhas).round
        if progresso > progressbar.progress
          progressbar.progress = progresso
        end

        registro = Registro.new linha, $layout, $versao
        tabela = "reg_#{registro.nome}".downcase.to_sym

        if $layout == :contrib
          if registro.pai == '0001'
            cnpj = ''
          end
          if registro.nome.end_with? '010'
            cnpj = registro.valores[0]
          end
          if registro.nome == '0140'
            cnpj = registro.valores[2]
          end
        end

        id = $chaves[registro.nome]
        if id == nil
          id = Integer(db[tabela].select{coalesce(max(:id), 0).as(:id)}.first[:id])
        end
        id += 1
        $chaves[registro.nome] = id

        id_pai = $chaves[registro.pai] || ($layout == :contrib ? '1' : nil)

        valores = {:id => id, :id_pai => id_pai, :cnpj_pai => cnpj}.merge registro.to_h

        db[tabela].insert valores

        linha = sped.readline
      rescue
        progressbar.stop
        puts linha
        raise
        break
      end until not linha.start_with? '|' or sped.eof?
    end

    sped.close
    $cont += 1
    progressbar.finish
  end

  db.drop_table? :schema_info

  puts "\n#{$cont} arquivo(s) processado(s)."
end