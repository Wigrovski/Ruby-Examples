puts 'Введите первое число: '
first = gets.chomp.to_i
puts 'Введите второе число: '
second = gets.chomp.to_i
puts 'Введите действие: + / - *'
action = gets.chomp.to_s
puts 'Результат: '
case action
  when '+'
    puts first + second


  when  '/'
  begin
    puts first / second
  rescue ZeroDivisionError
    puts 'На ноль делить нельзя'
  end

  when '-'
    puts first - second

  when  '*'
    puts first * second

else
  puts 'Нет такой операции'
end
