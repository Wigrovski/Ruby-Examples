$a = 3
b = 'string'
def method_name
  c = 3
  puts defined?($a)
  puts defined?(b)
  puts defined?(c)
end
method_name
puts '------------'
puts defined?($a)
puts defined?(b)
puts defined?(c)

var = 0
class MyClass
  def initialize
  @var = 2
  end

  def check
    puts 'В классе переменные:'
    puts "Переменная var: #{defined?(var)}"
    puts "Переменная @var: #{defined?(@var)}"
  end
end

look = MyClass.new
puts look.check

puts 'Вне класса переменные:'
puts "Переменная var: #{defined?(var)}"
puts "Переменная @var: #{defined?(@var)}"
