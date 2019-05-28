number = rand(16)
puts 'Загадано число от 0 до 15, отгадайте какое?'
def check_number (test, number)
    if test == number
      puts 'Поздравляю, ты угадал'
      exit
    end
      if test > number
        puts 'нужно меньше'
      else
        puts 'нужно больше'
      end
      if (test - number).abs < 3
        puts 'тепло'
      else
        puts 'холодно'
      end
    end




test = gets.to_i
check_number(test, number)
test = gets.to_i
check_number(test, number)
test = gets.to_i
check_number(test, number)
puts 'Не повезло, загадоно число ' + number.to_s
