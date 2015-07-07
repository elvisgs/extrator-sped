require 'find'
require 'sequel'
require 'yaml'
require_relative 'registro'

$cwd = File.dirname(__FILE__)

$config = YAML.load_file('config/database.yml')['mssql']
$data_dir = File.absolute_path($cwd + '\data').gsub('/', '\\')

$nome_bd = ARGV[0]
$layout = ARGV[1] || 'fiscal'

if $nome_bd
  create_db_cmd = $config['create_db_cmd']
  if not create_db_cmd
    puts 'Script de criação do BD não encontrado para o adapter informado'
    exit
  end

  puts 'Criando banco de dados...'
  system create_db_cmd.sub('@db_name@', $nome_bd).sub('@data_dir@', $data_dir).sub('@layout@', $layout)

  $config['database'] = $nome_bd
else
  puts 'Informe o nome do banco de dados!'
  puts 'Uso: ruby extrair.rb <nome_bd> <fiscal|contrib|ecf>'
  exit
end


$chaves = {}

$cont = 0

Sequel.connect($config) do |db|

  Find.find($cwd + '/sped').each do |f|
    next if not File.file?(f) or File.zero?(f)

    puts f

    sped = File.open(f, 'r:CP850:UTF-8')

    linha = sped.readline

    next if sped.eof?

    cnpj = $layout == 'contrib' ? '' : linha.split('|')[7]

    db.transaction do
      begin
        registro = Registro.new linha, $layout
        tabela = "reg_#{registro.nome}".downcase

        if registro.nome.end_with? '990'
          linha = sped.readline
          next
        end

        if $layout == 'contrib' and registro.nome.end_with? '010'
          cnpj = registro.valores[0]
        end

        id = $chaves[registro.nome]
        if id == nil
          db.fetch "select coalesce(max(id), 0) id from #{tabela}" do |row|
            id = Integer(row[:id])
          end
        end
        id += 1
        $chaves[registro.nome] = id

        id_pai = $chaves[registro.pai] || ($layout == 'contrib' ? "1" : "null")

        colunas = 'id, id_pai, "' + registro.campos.join('", "') + '", cnpj_pai'
        valores = "'" + registro.valores.join("', '") + "'"
        valores.gsub!("''", 'null')

        db.run "insert into #{tabela}(#{colunas}) values(#{id}, #{id_pai}, #{valores}, '#{cnpj}');"

        linha = sped.readline
      rescue
        puts linha
        raise
        break
      end until linha.start_with? '|9001' or sped.eof?
    end

    sped.close
    $cont += 1
  end

  puts "#{$cont} arquivo(s) processado(s)."
end