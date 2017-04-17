class Utils
  def self.get_first_line(file_path)
    file = File.open(file_path, 'r:CP850:UTF-8')
    file.readline
  ensure
    file.close unless file.nil?
  end

  def self.get_version(file_path)
    get_first_line(file_path).split('|')[2]
  end

  def self.get_cnpj(file_path, layout)
    layout == :contrib ? '' : get_first_line(file_path).split('|')[7]
  end

  def self.count_lines(file_path)
    #linux
    `wc -l "#{file_path}"`.strip.split(' ')[0].to_i
  rescue
    #windows
    `find /v /c "" "#{file_path}"`.strip.split(' ').last.to_i
  end

  def self.sped_file?(file_path)
    File.file? file_path and get_first_line(file_path).start_with? '|0000|'
  end
end