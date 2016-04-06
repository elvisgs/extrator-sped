## Extrator SPED
Extrai as informações contidas em um ou mais arquivos no formato do SPED para um banco de dados SQLServer ou PostgreSQL.

### Requisitos
- ruby 2.x

### Instalação
- `$ gem install bundler` (caso o bundler não esteja instalado)
- `$ bundle install`

### Configuração
- Renomeie o arquivo `config/database-template.yml` para `config/database.yml` e configure-o de acordo com seus bancos de dados
- A extração é realizada por default para o BD PostgreSQL configurado. Caso queira extrair para o BD SQLServer, configure uma variável de ambiente `SGBD_EXTRACAO` com o valor `mssql`
- Caso o caminho não seja informado como argumento, os arquivos a serem extraídos devem ser copiados para a pasta `sped`

### Modo de usar
`$ ruby extrair.rb <nome_BD> [tipo_arquivo] [caminho_sped]`
- `nome_BD`: um identificador de sua escolha para o BD
- `tipo_arquivo`: os valores possíveis são *fiscal* (*default*), *contrib* ou *ecf*
- `caminho_sped`: caminho absoluto de um arquivo ou diretório com arquivos SPED (default: ./sped)

### TODO
- Script para criação de BD do SPED Contrib no Postgres
- Script para criação de BD do SPED ECF no Postgres
- Carregar vários arquivos em paralelo
