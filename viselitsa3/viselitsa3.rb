current_path = './' + File.dirname(__FILE__)

require current_path + '/game.rb'
require current_path + '/result_printer.rb'
require current_path + '/word_reader.rb'

reader = WordReader.new
printer = ResultPrinter.new
slovo = reader.read_from_file(current_path + '/data/words.txt')
game = Game.new(slovo)
while game.status == 0
  printer.print_status(game)
  game.ask_latter
end
printer.print_status(game)
