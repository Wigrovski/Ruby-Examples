require 'date'
puts 'введите начальную дату: '
s = gets.chomp
puts 'введите конечную дату: '
e = gets.chomp
start_date = Date.parse(s)
end_date = Date.parse(e)
day = (start_date..end_date).count.to_s
puts 'Колличество дней: ' + day
