require 'net/http'

def word_exist?(word)
  url = "https://ru.wiktionary.org/wiki/#{word}"
  # Достаем содержимое страницы по указанному адресу и записываем в переменную
  # wiktionary_page. Обратите внимание, что мы меняем кодировку на utf-8, чтобы
  # мы могли корректно работать с русскими буквами.
  wiktionary_page = Net::HTTP.get( URI.parse(URI.encode(url))).force_encoding('UTF-8')
  if wiktionary_page =~ /текст на данной странице отсутствует/
    return false
  else
    return true
  end
end

# Метод, который формирует строку-шаблон типа "с.ат"
def random_regexp_string
  patterns = ['трон', 'скат', 'свал', 'крик', 'накал', 'спир', 'агат']
  pattern = patterns.sample
  letter = pattern.split('').sample
  return pattern.gsub(letter, '.')
end
