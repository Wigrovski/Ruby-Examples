puts 'Мужчины'
m = ["Gena", "George", "Misha"]
puts m.to_s
puts 'Женщины'
w = ["Katrin", "Liza", "Masha"]
puts w.to_s

puts (m + w).to_s
#---
puts 'Исходные'
num = [1, 2, 3, 4, 5]
puts num.to_s
puts 'Смена порядка'
puts num.reverse.to_s
puts 'Смена положения'
puts num.reverse!.to_s
puts num [2].to_s
#===
cars = ["Tayota", "BMW", "Mazda", "Honda", "Porche"]

puts 'У нас всего ' + cars.size.to_s + ' машин. Какую вам? Введите номер'
num = gets.to_i - 1
if num >= 0 && num <= cars.size
  puts "Ваша машина: "
  puts cars[num]
else
  puts "Такой машины нет"
end
