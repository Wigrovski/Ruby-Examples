puts 'Введите вашу почту для проверки'
email = gets.chomp
if email =~ /^[a-z\d_+.\-]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+$/i
  puts 'ok'
else puts "Почта не подходит"
end
