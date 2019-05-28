puts "Какая у вас на руках валюта?
1. Рубли
2. Доллары
"
choise = gets.chomp

puts 'Сколько сейчас стоит 1 доллар в рублях?'
cur = gets.to_f

  if choise == '1'
    puts 'Сколько  у вас рублей?'
    rub = gets.to_f
    money = (rub / cur).round(2)
    puts 'Ваши запасы равны: $ ' + money.to_s
  else
    puts 'Сколько у вас долларов?'
    usd = gets.to_f
    money = (cur * usd).round(2)
    puts 'Ваши запасы равны: рублей ' + money.to_s
  end
