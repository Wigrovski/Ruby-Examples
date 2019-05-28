array = []
puts 'введите длину массива'
number = gets.to_i
index = 0
while index < number do
  array << rand(100)
  index += 1
end

#puts array.max
max_value = 0

for item in array do
  if item > max_value
    max_value = item
  end
end
puts array.to_s
puts 'Максимальное число в массиве: ' + max_value.to_s
