#!/usr/bin/env ruby

require 'find'
require 'ruby-progressBar'
require 'sequel'
require 'yaml'
require_relative 'registro'

def mostrar_uso
  puts 'Uso: ruby extrair.rb <nome_bd> [fiscal|contrib|ecf] [caminho_sped]'
  exit
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

if $nome_bd
  create_db_cmd = $config['create_db_cmd']
  if not create_db_cmd
    puts 'Script de criação do BD não encontrado para o adapter informado'
    exit
  end

  puts 'Criando banco de dados...'
  system create_db_cmd.sub('@db_name@', $nome_bd).sub('@data_dir@', $data_dir).sub('@layout@', $layout.to_s)

  $config['database'] = $nome_bd
else
  puts 'Informe o nome do banco de dados'
  mostrar_uso
end


$chaves = {}

$cont = 0

Sequel.connect($config) do |db|
  $caminho ||= $cwd + '/sped'
  num_arquivos = if File.file?($caminho) then 1 else Dir.glob($caminho + '/*.txt').count end

  Find.find($caminho).each do |f|
    next if not File.file?(f) or File.zero?(f)

    puts ("\n[%03d/%03d] %s" % [$cont + 1, num_arquivos, File.basename(f)])

    total_linhas = `wc -l "#{f}"`.strip.split(' ')[0].to_i

    progressbar = ProgressBar.create(:title => 'Progresso', :format => "[%B] %p%%")

    sped = File.open(f, 'r:CP850:UTF-8')

    linha = sped.readline

    next if sped.eof?

    cnpj = $layout == :contrib ? '' : linha.split('|')[7]

    db.transaction do
      begin
        progresso = ((sped.lineno * 100) / total_linhas).round
        if progresso > progressbar.progress
          progressbar.progress = progresso
        end

        registro = Registro.new linha, $layout
        tabela = "reg_#{registro.nome}".downcase

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
          db.fetch "select coalesce(max(id), 0) id from #{tabela}" do |row|
            id = Integer(row[:id])
          end
        end
        id += 1
        $chaves[registro.nome] = id

        id_pai = $chaves[registro.pai] || ($layout == :contrib ? '1' : 'null')

        colunas = 'id, id_pai, "' << registro.campos.join('", "') << '", cnpj_pai'
        valores = "'" << registro.valores.join("', '") << "'"
        valores.gsub!("''", 'null')

        db.run "insert into #{tabela}(#{colunas}) values(#{id}, #{id_pai}, #{valores}, '#{cnpj}');"

        linha = sped.readline
      rescue
        puts linha
        raise
        break
      end until not linha.start_with? '|' or sped.eof?
    end

    sped.close
    $cont += 1
    progressbar.finish
  end

  puts "\n#{$cont} arquivo(s) processado(s)."
end