def print_stars(number)
  result_stars = ""
  while result_stars.length < number do
    result_stars += "*"
    puts result_stars

  end
end

puts "Сколько вам звезд"
stars = gets.to_i
puts "Получайте!"
puts print_stars(stars).to_s
