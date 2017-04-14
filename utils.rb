class Utils
  def self.get_first_line(file_path)
    file = File.open(file_path, 'r:CP850:UTF-8')
    line = file.readline
    file.close
    line
  end

  def self.detect_version(file_path)
    line = get_first_line file_path

    line.split('|')[2]
  end

  def self.detect_cnpj(file_path, layout)
    line = get_first_line file_path

    fields = line.split('|')
    layout == :contrib ? '' : fields[7]
  end
end