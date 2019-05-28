def sklonenie (number, krokodil, krokodila, krokodilov)
    ostatok = number % 10
    if ostatok == 1
      return krokodil
    end
    if (ostatok > 2 && ostatok < 4)
      return krokodila
    end
    if (ostatok > 5 && ostatok <= 9 )
      return krokodilov
    end
    if (number == nil || !number.is_a?(Numeric))
  number = 0
end

    if number >= 11
      return krokodilov
    end
end



skolko = ARGV[0].to_i
puts "#{skolko} #{sklonenie(skolko, 'негритенок', 'негритёнка', 'негритят')} " +
"#{sklonenie(skolko, 'пошел', 'пошли', 'пошли')} купаться в море! "
