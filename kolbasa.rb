def first_element (array, number)
  result_array = []
  counter = 0
  while counter < number
    if array.size <= counter
      break
    end
    result_array << array[counter]
    counter += 1
  end
  return result_array
end
original_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
puts "Вот такая колбаса в продаже:"
puts original_array.to_s
puts "Сколько отрезать:"
number = gets.to_i
puts "Ваша колбаса:"
puts first_element(original_array, number).to_s
puts original_array.take(number).to_s
