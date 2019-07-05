# Программа для шифрования слова с помощью механизма MD5 или SHA1
require 'digest'

puts "Введите слово или фразу для шифрования: "
string = STDIN.gets.chomp

puts "Каким способом хотите шифровать: "
puts "1. MD5"
puts "2. SHA1"
encrypt_method = STDIN.gets.to_i

puts "Вот что получилось: "
case encrypt_method
when 1
  puts Digest::MD5.hexdigest(string)
when 2
  puts Digest::SHA1.hexdigest(string)

end
