require 'pony'
require 'io/console'


my_mail = 'wigrovski@mail.ru'
puts "Веедите пароль от почты #{my_mail}:"
password = STDIN.noecho(&:gets).chomp
puts "Кому письмо? введите адрес:"
send_to = STDIN.gets.chomp
puts "Тема письма:"
subject = STDIN.gets.encode('UTF-8').chomp
puts "Текст письма:"
body = STDIN.gets.encode('UTF-8').chomp
Pony.mail(

  :subject => subject,
    :body => body,
    :to => send_to,
    :from => my_mail,
    :via => :smtp,
    :via_options => {
      :address => 'smtp.mail.ru',
      :port => '465',
      :tls => true,
      :user_name => my_mail,
      :password => password,
      :authentication => :plain
    }
    )
puts "Письмо отправлено"
