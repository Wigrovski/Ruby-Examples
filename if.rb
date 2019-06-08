  #  puts "введите первое число"
  #  n1 = gets.to_i

  #  puts 'введите второе число'
  #  n2 = gets.to_i

  #  n3 = (n1 + n2) / 2

  #  puts  "Первое число" + n1.to_s
  #  puts  "Второе число" + n2.to_s
  #  puts  "Среднее" + n3.to_s

    #
    print 'Введите первое чило: '
    operand_1 = gets.chomp.to_i

    print 'Введите действие: '
    operator = gets.chomp
    raise "Неверное действие" unless ['+','-','/','*'].include?(operator)

    print 'Введите второе число: '
    operand_2 = gets.chomp.to_i

    puts "#{operand_1}".rjust(10)
    puts operator+"#{operand_2}".rjust(9)
    puts "="*10
    f = eval("#{operand_1}#{operator}#{operand_2}").to_s.rjust(10)
    puts f
    f = f.to_i
    if f.even?
      puts "Это число четное"
    else
      puts "Это число нечетное"
    end
