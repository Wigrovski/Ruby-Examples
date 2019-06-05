require_relative 'person'
puts 'У нас есть два человека'
vasya = Person.new('Василий', 'Алибабаевич', 80)
volodya = Person.new('Владимир', 'Владимирович', 45)
puts vasya.full_name
puts "И ему #{vasya.age} #{vasya.old? ? 'пожилой' : 'молодой'}"
puts volodya.full_name
puts "И ему #{volodya.age}  #{volodya.old? ? 'пожилой' : 'молодой'}"
