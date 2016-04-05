require 'date'
require 'yaml'

class Registro
  attr_reader :nome, :bloco, :pai, :campos, :valores

  @@blocos = nil

  def initialize(linha, layout = :fiscal)
    @@blocos ||= YAML.load_file("config/hierarquia-sped-#{layout}.yml")
    @valores = dividir_linha_em_valores linha
    @nome = @valores.shift
    @bloco = @nome[0]
    @pai = @@blocos[@bloco][@nome]['pai']
    @campos = @@blocos[@bloco][@nome]['campos']

    corrigir_caracteres_especiais
    corrigir_datas
  end

  private

  def dividir_linha_em_valores(linha)
    linha.sub(/^\|/, '').sub(/\|$/, '').gsub('\\', '\\\\\\\\').split('|')
  end

  def corrigir_caracteres_especiais
    @valores.map! do |c|
      c.strip!
      c.sub!(/,/, '.') if eh_decimal? c
      c.gsub!(/'/, "''")
      c
    end
  end

  def eh_decimal?(str)
    str =~ /^-?\d+,\d+$/
  end

  def corrigir_datas
    @campos.each_with_index do |campo, i|
      if campo.start_with? 'dt_' or campo.start_with? 'dat_'
        @valores[i] = formatar_data @valores[i]
      end
    end

    if @nome == 'C495' and @valores[0] == ''
      @valores[0] = '0'
    end
  end

  def formatar_data(d)
    d != '' ? Date.strptime(d, '%d%m%Y').strftime('%Y-%m-%d') : ''
  end
end