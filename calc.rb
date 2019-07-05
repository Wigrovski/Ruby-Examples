puts 'Введите первое число: '
first = gets.chomp.to_f
puts 'Введите второе число: '
second = gets.chomp.to_f
puts 'Введите действие: + / - *'
action = gets.chomp.to_s
puts 'Результат: '
case action
  when '+'
    puts first + second


  when  '/'
#Проверка деления на ноль
  #begin
    puts first / second
  #rescue ZeroDivisionError
  #  puts 'На ноль делить нельзя'
  #end

  when '-'
    puts first - second

  when  '*'
    puts first * second

else
  puts 'Нет такой операции'
end
