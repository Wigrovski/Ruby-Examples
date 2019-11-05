require 'telegram/bot'
TOKEN = '899539754:AAEDdXB2cOn-2iF2Vxw897-iqwzi3J182Zk'

require 'date'
#puts 'введите начальную дату: '
#s = gets.chomp
#puts 'введите конечную дату: '
#e = gets.chomp
#start_date = Date.parse(s)
#end_date = Date.parse(e)
#day = (start_date..end_date).count.to_s
#puts 'Колличество дней: ' + day

Telegram::Bot::Client.run(TOKEN) do |bot|
  bot.listen do |message1, message2|
case message1.text
when '/start'
  bot.api.send_message(chat_id: message1.chat.id, text: "Привет, #{message1.from.first_name}, введи начальную дату")
    when "#{message1}"
     s = gets.chomp
    end
  end
unless
  bot.listen do |message2|
    case message2.text
    when "#{message2}"
      bot.api.send_message(chat_id: message2.chat.id, text: "введи конечную дату")
    e = gets.chomp
    end_date = Date.parse(e)
    end
  end
end
end
