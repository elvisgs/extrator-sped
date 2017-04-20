require 'sequel'
require 'event_emitter'
require 'registro'
require 'sped_utils'

class Sped2DB
  include EventEmitter

  def initialize(sped_files, db_config)
    @sped_files = sped_files
    @db_config = db_config
    @layout = SpedUtils.get_layout(sped_files.first)
    @version = SpedUtils.get_version(sped_files.first)
  end

  def convert
    @ids = {}
    @db = Sequel.connect(@db_config)

    @sped_files.each_with_index { |f, i| process_file(f, i) }
  ensure
    @db.disconnect unless @db.nil?
  end

  private

  def process_file(f, index)
    emit :process_file_start, f, index

    total_lines = SpedUtils.count_lines f
    sped = File.open(f, 'r:CP850:UTF-8')
    @cnpj_pai = nil

    @db.transaction(rollback: :reraise) do
      sped.each_line do |line|
        process_line(line, sped.lineno)

        progress = ((sped.lineno * 100) / total_lines).round
        emit :progress, progress, f, index
      end
    end

    emit :process_file_end, f, index
  ensure
    sped.close unless sped.nil?
  end

  def process_line(line, lineno)
    reg = Registro.new line, @layout, @version
    reg_table = @db[table_name(reg)]

    @cnpj_pai = get_cnpj_pai(reg)
    id = next_id(reg)
    id_pai = @ids[reg.pai] || (@layout == :contrib ? 1 : 0)

    values = { id: id, id_pai: id_pai, cnpj_pai: @cnpj_pai }
    values.update reg.to_h

    reg_table.insert values
  rescue SpedError => e
    e.lineno = lineno
    raise e
  end

  def get_cnpj_pai(reg)
    cnpj = @cnpj_pai
    name = reg.nome

    if @layout == :fiscal && name == '0000'
      cnpj = reg.cnpj
    elsif @layout == :contrib
      cnpj = reg.cnpj if name.end_with?('010') || name == '0140'
    end

    cnpj
  end

  def table_name(reg)
    "reg_#{reg.nome}".downcase.to_sym
  end

  def next_id(reg)
    reg_table = @db[table_name(reg)]
    id = @ids[reg.nome] || Integer(reg_table.max(:id) || 0)
    id += 1
    (@ids[reg.nome] = id)
  end
end
