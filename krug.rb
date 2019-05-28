puts "Введите радиус круга"
r = gets.chomp.to_f
def circle_square (radius)

  return  3.14 * radius * radius
end
puts "Площадь круга " + circle_square(r).to_s
