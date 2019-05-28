puts 'Введите имена'
names = []
user = nil
while user !='' do
  user = gets.chomp
  names << user
end
for item in names do
  puts "С нами " + item
  sleep 1
  if (item == 'Alice')
    puts "Стоп! Кто такая Alice"
    sleep 3
    break
  end
end
puts "Что это за девочка и где она живет?"
sleep 2
puts "А вдруг она не курит? А вдруг она не пьёт?"
sleep 2
puts "А мы с такими рожами возьмем да и припрёмся к Элис... :)"
