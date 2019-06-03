class ResultPrinter


  def print_status(game)
    cls
    puts "Игра виселица. Угадайте слово:"

    sleep 1
    puts "\n Слово: #{get_word_for_print(game.latters, game.good_latters).upcase}"
    puts "Ошибки #{game.errors}: #{game.bad_latters.join(', ')}"
    arg = ARGV[1]
    puts "Подсказка: " + arg
    print_viselitsa(game.errors)
      if game.status == -1
        puts "Вы проиграли"
      elsif game.status == 1
          puts "Вы победили!\n\n"
      else
          puts "Осталось попыток:" + (7 - game.errors).to_s

      end
  end




      def get_word_for_print(latters, good_latters)
        result = ' '
        for item in latters do
          if good_latters.include?(item)
            result += item + ' '
          else
            result += "__ "
          end
        end
        return result
      end


      def print_viselitsa(errors)
        case errors
          when 0
            puts '
            _______
            |/
            |
            |
            |
            |
            |
            |
            |
          __|________
          |         |
          '
          when 1
            puts '
          _______
          |/
          |     ( )
          |
          |
          |
          |
          |
          |
        __|________
        |         |
        '
          when 2
            puts '
          _______
          |/
          |     ( )
          |      |
          |
          |
          |
          |
          |
        __|________
        |         |
        '
          when 3
            puts '
          _______
          |/
          |     ( )
          |      |_
          |        \\
          |
          |
          |
          |
        __|________
        |         |
        '
          when 4
            puts '
          _______
          |/
          |     ( )
          |     _|_
          |    /   \\
          |
          |
          |
          |
        __|________
        |         |
        '
        when 5
        puts '
          _______
          |/
          |     ( )
          |     _|_
          |    / | \\
          |      |
          |
          |
          |
        __|________
        |         |
        '
        when 6
        puts '
          _______
          |/
          |     ( )
          |     _|_
          |    / | \\
          |      |
          |     / \\
          |    /   \\
          |
        __|________
        |         |
        '
        when 7
        puts '
         _______
         |/     |
         |     (_)
         |     _|_
         |    / | \\
         |      |
         |     / \\
         |    /   \\
         |
       __|________
       |         |
       '

        end

  end
  def cls
    system 'clear' or system 'cls'
  end
end
