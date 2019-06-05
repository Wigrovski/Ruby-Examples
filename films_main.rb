require_relative 'film'
require_relative 'person'

person1 = Person.new('Василий', 'Алибабаевич', 80)
person1.film = Film.new('Спилберг', 'Челюсти')

puts "Какой режессер нравится?"
director = gets.encode('UTF-8').chomp
films = []


while films.size < 2
  puts "Какой-нибудь его хороший фильм?"
  film_name = gets.encode('UTF-8').chomp
  film = Film.new(director, film_name)
  films << film
end
puts ''
puts 'С нами еще сегодня ' + person1.full_name
puts 'с любимым фильмом ' + person1.film.title
film = films.sample
puts "Но мы сегодня смотрим фильм: #{film.title}"
puts "Режессера #{film.director}"
