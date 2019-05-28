puts 'Игра Камень - Ножницы - Бумага'
puts 'введите вариант: 0 - камень, 1 - ножницы, 2 - бумага'
var = ['Камень', 'Ножницы', 'Бумага']
choise = gets.to_i
puts 'Вы выбрали: ' + var[choise]
comp = rand(0..2)
puts 'Комп выбрал: ' + var[comp]
if choise ==  comp
  puts "Ничья"
else
  if choise == 0 && comp == 1
    puts "Вы победили"
  else
    if choise == 0 && comp == 2
      puts "Победил комп"
    end
  end
end

  if choise == 1 && comp == 2
    puts "Вы победили"
  else
    if choise == 1 && comp == 0
      puts "Победил комп"
    end
  end

  if choise == 2 && comp == 0
    puts "Вы победили"
  else
    if choise == 2 && comp == 1
      puts "Победил комп"
    end
  end
