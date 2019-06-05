forehads = File.new('./forehads.txt')
eyes = File.new('./eyes.txt')
nose = File.new('./nose.txt')
month = File.new('./month.txt')

if File.exist?(forehads)
  file = File.new(forehads)
  f = file.readlines
  file.close
else
  puts "Файл не найден"
end

if File.exist?(eyes)
  file = File.new(eyes)
  e = file.readlines
  file.close
else
  puts "Файл не найден"
end

if File.exist?(nose)
  file = File.new(nose)
  n = file.readlines
  file.close
else
  puts "Файл не найден"
end

if File.exist?(month)
  file = File.new(month)
  m = file.readlines
  file.close
else
  puts "Файл не найден"
end


puts f.sample
puts e.sample
puts n.sample
puts m.sample
