puts "Введите слово чтобы проверить полиндромность: "
original_string = STDIN.gets.encode('UTF-8').chomp
stripped_string = original_string.delete(' ,!.?:;-')
reverse_string = stripped_string.reverse
if reverse_string == stripped_string
  puts 'Это полиндром'
else
  puts "Это не полиндром"
end
