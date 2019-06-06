require 'translit'
puts "Введите слово для транслита: "
slovo = STDIN.gets.chomp
result = Translit.convert(slovo)
puts result
