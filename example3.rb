#names = Array["Bob", "Alex", "Victor"]
#puts (names[0])
#i = 0
#while i < 5
#  puts i
#  i += 1
#end


secret = "Blue"
color = ""
while color != secret
  puts "Введите цвет"
  color = gets.chomp()
end
puts  "вы победили!"
