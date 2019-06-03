require_relative 'game'
require_relative 'result_printer'


printer = ResultPrinter.new
slovo = ARGV[0]
game = Game.new(slovo)
while game.status == 0
  printer.print_status(game)
  game.ask_latter
end
printer.print_status(game)
