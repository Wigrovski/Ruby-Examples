puts 'Предложение с хэш тэгом: '
litter = gets.chomp
hashtag_regexp = /#[[:word:]-]+/
hashtags = litter.scan(hashtag_regexp)
puts
puts 'Нашлись такие хэш тэги: ' + hashtags.join(',')
