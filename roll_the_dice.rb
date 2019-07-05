def show_rolling_die
  100.times do
    # Вместо puts используем print, т.к. он не добавляет перенос строки в конце
    print "#{rand(6) + 1}\r"
    sleep 0.01
  end
end

puts 'How many dice?'
number = gets.to_i
puts
s = 0

number.times do
  # Вызываем метод вращения кубика
  show_rolling_die
  dic = rand(6) + 1
  puts dic
  s += dic
end

puts s
