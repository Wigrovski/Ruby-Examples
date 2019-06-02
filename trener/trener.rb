require_relative 'bodybuilder'
puts "К вам на тренеровек пришли два дохляка, прокачаем их"
body1 = BodyBuilder.new
body2 = BodyBuilder.new
5.times do
  body1.pump('triceps')
end
7.times do
  body2.pump('triceps')
end
3.times do
  body1.pump('biceps')
end
4.times do
  body2.pump('biceps')
end
2.times do
  body1.pump('delta')
end
5.times do
  body2.pump('delta')
end

puts  "Первый дохляк прокачен"
body1.show_muscle
puts  "Второй дохляк прокачен"
body2.show_muscle
