class WordReader
  def read_from_file(file_name)
    begin

      f = File.new(file_name, 'r:UTF-8')
      lines = f.readlines
      f.close
    rescue SystemCallError
      abort "Файл со словами не найден"
    end
      return lines.sample.chomp
  
  end
end
