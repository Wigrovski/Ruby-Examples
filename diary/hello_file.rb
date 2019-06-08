#current_path = File.dirname(__FILE__)
#file = File.new(current_path + '/' + ".txt" + "a:UTF-8")
file = File.new("./file.txt", "a:UTF-8")
file.puts 'hello file'
puts 'Сделано'
file.close
