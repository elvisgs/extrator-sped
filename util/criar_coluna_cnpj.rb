require 'yaml'
require 'sequel'

$blocos = YAML.load_file('../config/hierarquia-sped.yml')

$db_config = YAML.load_file('../config/database.yml')['mssql']
$db_config['database'] = 'sped_pis'

Sequel.connect($db_config) do |db|
  $blocos.each { |k, v|
    v.each { |k, v|
      tabela = "reg_#{k}".downcase
      puts k
      db.run "alter table #{tabela} add cnpj_pai character varying(14)" rescue next
    }
  }
end