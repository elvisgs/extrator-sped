#!/usr/bin/env ruby

$LOAD_PATH.unshift File.expand_path('lib', File.dirname(__FILE__))

require 'find'
require 'ruby-progressbar'
require 'sequel'
require 'yaml'
require 'registro'
require 'db_tools'
require 'sped_utils'
require 'sped2db'

erro_proc = lambda do |msg, uso = false|
  STDERR.puts msg
  STDERR.puts 'Uso: ruby extrair.rb <nome_bd> <caminho_sped>' if uso
  exit 1
end

sgbd = ENV['SGBD_EXTRACAO'] || 'postgres' # mssql|postgres
config = YAML.load_file('config/database.yml')[sgbd]

nome_bd = ARGV.shift
caminho = ARGV.select { |arg| File.file?(arg) || File.directory?(arg) }[0]

erro_proc['Caminho inválido', true] if caminho.nil?

arquivos_sped = Find.find(caminho).select { |f| SpedUtils.sped_file? f }
num_arquivos = arquivos_sped.size

erro_proc['Nenhum arquivo no formato SPED foi encontrado'] if num_arquivos.zero?

layout = SpedUtils.get_layout(arquivos_sped.first)
versao = SpedUtils.get_version arquivos_sped.first
versoes_validas = Registro.versoes[layout]
unless versoes_validas.include? versao
  msg = "Versão #{versao} não suportada para o layout '#{layout}'\n"
  msg << "As versões suportadas são: #{versoes_validas.join(', ')}"
  erro_proc[msg]
end

if nome_bd
  puts "SPED #{layout.to_s.capitalize} v#{versao}"

  bd_sped = DbTools.new(config, nome_bd, layout, versao)

  if !bd_sped.exists?
    puts 'Criando banco de dados...'
    bd_sped.create
    puts 'Banco de dados criado.'
  else
    puts 'O banco de dados já existe. A carga será complementada.'
  end

  config[:database] = nome_bd
else
  erro_proc['Informe o nome do banco de dados', true]
end

sped2db = Sped2DB.new arquivos_sped, config
progressbar = nil

sped2db.on :process_file_start do |file, index|
  puts format("\n[%03d/%03d] %s", index + 1, num_arquivos, File.basename(file))
  progressbar = ProgressBar.create(title: 'Progresso', format: '[%B] %p%%')
end
sped2db.on :progress do |progress|
  progressbar.progress = progress if progress > progressbar.progress
end
sped2db.on :process_file_end do
  progressbar.finish
end

begin
  sped2db.convert
rescue => e
  progressbar.stop
  msg = "Erro: #{e.class}: #{e.message}\n#{e.backtrace.first}\n"
  msg << "Linha #{e.lineno}: #{e.line}" if e.instance_of? SpedError
  erro_proc[msg]
end
