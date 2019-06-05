file_name = ARGV[0]

if file_name == nil
  puts "Введите имя файла"
end
unless File.exist?(file_name)
  abort 'Файл не найден'
end

file = File.new(file_name, 'r:UTF-8')
lines = file.readlines
file.close
puts 'Открыли файл: ' + file_name
empty_lines_counter = 0
last_five_lines = []

lines.each_with_index do |line, index|
  if line == "\n"
    empty_lines_counter += 1
  end
  if lines.size - index <= 5
    last_five_lines << line
  end
end
puts 'Всего строк: ' + lines.length.to_s
puts 'Пустых строк: ' + empty_lines_counter.to_s
puts 'Пять последних строк файла: '

for line in last_five_lines
  puts line
end
