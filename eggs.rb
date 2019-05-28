eggs = [1, 0, 0, 1, 0, 1, 1, 1, 0, 1]

good = []
broken = 0
for item in eggs do
  if (item != 0)
    broken += 1
  else
    good << item
  end
end

puts 'Всего яиц: ' + eggs.to_s
puts 'Хорошие яйца: ' + good.to_s
puts 'Плохие яйца: ' + broken.to_s
