def honeypots_counter
  honeypots = []
  50000.times do |i|
    honeypots << "honey pots #{i}"
  end
end

puts "Winnie trying fall to asleep..."
honeypots_counter
sleep 3
GC.start
sleep 3
gets
