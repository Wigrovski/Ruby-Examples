class WordReader
  def read_from_file(file_name)
    if File.exist?(file_name)
      f = File.new(file_name, 'r:UTF-8')
      lines = f.readlines
      f.close
      return lines.sample.chomp
    end
  end
end
