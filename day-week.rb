time = Time.now
weekday = time.wday
if weekday = 0 || weekday = 6
  puts "Ура выходной"
else
  puts "Трудовые будни"
end
