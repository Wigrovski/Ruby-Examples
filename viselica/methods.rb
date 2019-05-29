def get_latters
  slovo = ARGV[0]
  if (slovo == nil || slovo == "")
    abort "Не загадали слово"
  end
  return slovo.encode("UTF-8").split('')
end

def get_user_input
  latter = ""
  while latter == "" do

    latter = STDIN.gets.encode("UTF-8").chomp.downcase
  end
  return latter
end

def check_result(user_input, latters, good_latters, bad_latters)
  if (good_latters.include?(user_input) || bad_latters.include?(user_input))
    return 0
  end
  if latters.include? user_input
    good_latters << user_input
    if latters.uniq.size == good_latters.uniq.size
      return 1
    else
      return 0
    end
  else
      bad_latters << user_input
      return -1
  end
end

def get_word_for_print(latters, good_latters)
  result = ""
  for latter in latters do
    if good_latters.include? latter
      result += latter + " "
    else
      result += "__ "
    end
  end
  return result
end


def print_latters(latters, good_latters, bad_latters, errors )
    puts "\n Слово: " + (get_word_for_print(latters, good_latters)).upcase
    puts "Ошибки (#{errors}): #{bad_latters.join(', ')}"
    if errors >= 7
      puts "Вы проиграли"
    else
      if latters.uniq.size == good_latters.size
        puts "Вы победили!\n\n"
      else
        puts "Осталось попыток:" + (7-errors).to_s
      end
    end

end

def cls
  system 'clear' or system 'cls'

end
