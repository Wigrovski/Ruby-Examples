puts "Введите слово и узнайте сколько это байт: "
s = gets.chomp.to_s
puts "В слове: #{s} - #{s.bytesize} байт"

puts "А как насчет цифр? Напишите любое число и узнайте сколько это байт: "
i = gets.chomp.to_i
puts "В числе: #{i} - #{i.size} байт"
