### Este projeto é obsoleto e não está sendo mais mantido. Use o [sped2db](https://github.com/elvisgs/sped2db).  

## Extrator SPED
> Extrai as informações contidas em um ou mais arquivos no formato do SPED para um banco de dados SQLServer ou PostgreSQL.

### Requisitos
- ruby 2.x

### Instalação
```shell
$ cd extrator-sped
$ gem install bundler # caso o bundler não esteja instalado
$ bundle install
```

### Configuração
- Renomeie o arquivo `config/database-template.yml` para `config/database.yml` e configure-o de acordo com seus bancos de dados
- A extração é realizada por default para o BD PostgreSQL configurado. Caso queira extrair para o BD SQLServer, configure uma variável de ambiente `SGBD_EXTRACAO` com o valor `mssql`

### Modo de usar
```shell
$ ruby extrair.rb <nome_BD> <caminho_sped>
```
- `nome_BD`: um identificador de sua escolha para o BD
- `caminho_sped`: caminho absoluto de um arquivo ou diretório com arquivos SPED. Caso seja informado um diretório, deve conter arquivos com mesmo layout e versão do SPED.

### TODO
- Suporte ao SPED ECF
- Carregar vários arquivos em paralelo
