puts "Введите имя героя"
hero = STDIN.gets.chomp
antiheros = {
  "batman" => "Jocker",
  "buratino" => "Karabas" }

antiheros["tom"] = "jerry"
if antiheros.has_key?(hero)
  puts "Для героя #{hero} антигерой #{antiheros[hero]}"
else
  puts "Нет такого героя"

end
