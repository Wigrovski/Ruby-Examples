forehads = File.new('./forehads.txt')
eyes = File.new('./eyes.txt')
nose = File.new('./nose.txt')
month = File.new('./month.txt')

if File.exist?(forehads)
  fl = File.new(forehads)
  f = fl.readlines
  fl.close
else
  puts "Файл не найден"
end

if File.exist?(eyes)
  fl = File.new(eyes)
  e = fl.readlines
  fl.close
else
  puts "Файл не найден"
end

if File.exist?(nose)
  fl = File.new(nose)
  n = fl.readlines
  fl.close
else
  puts "Файл не найден"
end

if File.exist?(month)
  fl = File.new(month)
  m = fl.readlines
  fl.close
else
  puts "Файл не найден"
end

time = Time.now
filename = 'face-' + time.strftime('%y-%m-%d') + '.txt'
file = File.new(filename, 'w:UTF-8')

file.puts(f.sample)
file.puts(e.sample)
file.puts(n.sample)
file.puts(m.sample)
file.close
