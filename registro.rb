require 'date'
require 'yaml'

class Registro
  attr_reader :nome, :pai, :campos, :valores

  @@metadados = nil

  @@versoes = {
    fiscal: %w[009 010 011],
    contrib: %w[002 003]
  }

  def initialize(linha, layout, versao)
    @layout = layout
    @versao = versao
    @@metadados ||= YAML.load_file("meta/metadados-#{@layout}-v#{@versao}.yml")
    @valores = dividir_linha_em_valores linha
    @nome = @valores.shift.upcase

    raise "Registro #{@nome} nao suportado" unless @@metadados.key? @nome

    @pai = @@metadados[@nome]['pai']
    @campos = @@metadados[@nome]['campos']

    corrigir_caracteres_especiais
    corrigir_datas

    @hash = to_h
  end

  def self.versoes
    @@versoes
  end

  def to_h
    valores = @valores.map { |v| v.empty? ? nil : v }
    @campos.map(&:to_sym).zip(valores).to_h
  end

  def method_missing(method)
    if respond_to_missing? method
      @hash[method]
    else
      super
    end
  end

  def respond_to_missing?(method, *)
    @hash.key?(method) || super
  end

  private

  def dividir_linha_em_valores(linha)
    linha.gsub(/(^\|)|(\|$)/, '').gsub('\\', '\\\\\\\\').split('|')
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
      if campo.start_with?('dt_', 'dat_')
        @valores[i] = formatar_data @valores[i]
      end
    end

    @valores[0] = '0' if @nome == 'C495' && @valores[0] == ''
  end

  def formatar_data(d)
    d != '' ? Date.strptime(d, '%d%m%Y').strftime('%Y-%m-%d') : ''
  end
end
