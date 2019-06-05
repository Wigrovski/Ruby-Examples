class ResultPrinter

    def initialize
    @status_image = []
    current_path = File.dirname(__FILE__)
    counter = 0
    while counter <= 7 do
       file_name = current_path + "/image/#{counter}.txt"
       if File.exist?(file_name)
          f = File.new(file_name, "r:UTF-8")
          @status_image  << f.read
          f.close
          else
            @status_image << "\n [Картинка не найдена] \n"
       end
       counter += 1
    end
    end

  def print_status(game)
    cls
    puts "Игра виселица. Угадайте слово:"

    sleep 1
    puts "\n Слово: #{get_word_for_print(game.latters, game.good_latters).upcase}"
    puts "Ошибки #{game.errors}: #{game.bad_latters.join(', ')}"
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
        puts @status_image[errors]
      end
  def cls
    system 'clear' or system 'cls'
  end
end
