passengers = [{
  :bilet => 'РМ2010398 050298',
  :name => 'Венедикт В. Ерофеев',
  :route => 'Москва — Шиес',
  :passport => '45 99 505281'

},
{:bilet => 'РМ2010399 050298',
:name => 'Иннокентий П. Шниперсон',
:route => 'Павловский Посад -> Орехово-Зуево',
:passport => '6 01 192872'}


]

passengers.each_with_index do |passenger, number|
  puts "Место №#{number + 1}"
  puts "Билет №:#{passenger[:bilet]}"
  puts "Пассажир: #{passenger[:name]}"
  puts "Маршрут: #{passenger[:route]}"
  puts "Пасспорт №: #{passenger[:passport]}"
  puts
end
