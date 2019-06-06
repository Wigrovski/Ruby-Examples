current_path = File.dirname(__FILE__)
file_path = current_path + '/data/movies.txt'


if File.exist?(file_path)
  f = File.new(file_path, 'r:UTF-8')
  movies = f.readlines
  f.close
  else
    puts "База фильмов пустая"
end

number = rand(movies.length)
# Определим, чётное ли число получилось, проверив его остаток от деления на два
if number %2 == 1
    # Если число нечётное, уменьшим его на 1
  number -= 1
end
# Выведем две строки — выбранную и следующую за ней на экран
puts
puts "Сегодня смотрим:"
puts movies[number]
puts "Краткое описание фильма"
puts movies[number + 1]
