require_relative 'methods'
regexp_string = random_regexp_string

puts "Придумайте как можно больше слов, содержащих шаблон: #{regexp_string.gsub('.', '*')}"

puts
puts
puts
puts 'Для выхода введите q'

# В этой переменной будет количество очков пользователя — количество реально
# существующих слов, подходящих под шаблон.
count = 0

loop do
  word = STDIN.gets.chomp
    if word == 'q'
      break
    end

    if word_exist?(word)
      if word =~ /#{regexp_string}/
        puts 'OK, давай еще слово =)'
        count += 1
      else
        puts 'Неподходит, попробуй еще'
      end

      else
      puts 'Нет такого слова в Викисловаре'
    end
end

puts "Игра окончена, ваш счет: #{count}"
