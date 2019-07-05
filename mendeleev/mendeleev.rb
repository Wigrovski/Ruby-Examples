 table = { "H" => "водород",
   "Be" => "берилий",
   "C" => "углерод"
 }

puts "Есть элементы #{table.keys}"
puts "Введи интересующий элемент: "
element = gets.chomp
if table.key?(element)
  puts "Это #{table[element]}"
else
  puts "не знаю такое"
end
