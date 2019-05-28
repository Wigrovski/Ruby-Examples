require './methods.rb'
cls
latters = get_latters
errors = 0
bad_latters = []
good_latters = []
puts "Игра виселица. Угадайте слово: "
arg = ARGV[1]
puts "Подсказка: " + arg


 while errors < 7 do
   print_latters(latters, good_latters, bad_latters, errors )
   puts "\nвведите следующую букву"
   user_input = get_user_input
   result = check_result(user_input, latters, good_latters, bad_latters)
   if (result == - 1)
     errors += 1
      elsif (result == 1)
       break
   end
 end
 print_latters(latters, good_latters, bad_latters, errors )
