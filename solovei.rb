temp = ARGV[0]
puts 'Давайте узнаем поют ли сейчас соловьи'
if temp == nil
  puts "Какая сейчас температура?"
  temp = STDIN.gets.to_i
else
  temp = temp.to_i
end

season = ARGV[1]
if season == nil
  puts "Какое время года (0 - весна, 1 - лето, 2 - осень, 3 - зима)?"
  season = STDIN.gets.to_i
else
  season = season.to_i
end


if season  == 1
    if temp > 15 && temp < 35
    puts "Скорей на улицу слушать соловьев!"
    else
    puts 'Увы даже летом бывает для соловьев неподходящяя погода. Тишина'
    end
else
    if season == 0 || season == 2
        if temp > 22 && temp < 30
          puts "Подходящая погода чтобы послушать соловьев, скорее в парк!"
        else
          puts 'Соловьи притихли, может греются или прохлаждаются'
        end
    else
      if season == 3
        if temp > 5
          puts "Немного потеплело, пару соловьев чирикнуло вам в ответ, но большая часть улетело в теплые края, зима на дворе"
        else
          puts "Все улетели в теплые края"
        end
      end
    end
end
