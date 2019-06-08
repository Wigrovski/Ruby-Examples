puts "Привет это дневник. Напиши о чем думаешь"
puts "Я сохраню все что ты напишешь, пока не напишешь \" конец \" в файл "
puts
current_path = File.dirname(__FILE__)
line = nil
all_lines = []
while line != "конец" do
  line = STDIN.gets.encode('UTF-8').chomp
  all_lines << line
end

time = Time.now
file_name = time.strftime("%y-%m-%d")
file_string = time.strftime("%H:%M")
separator = "-----------------------------------"

file = File.new(current_path + "/" + file_name + ".txt", "a:UTF-8")
file.print("\n\r" + file_string + "\n\r")
all_lines.pop

for item in all_lines do
  file.puts(item)
end
file.puts(separator)
file.close
puts "Запись сохранена в файл #{file_name}.txt"
