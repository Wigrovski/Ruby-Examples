require 'date'
class Task <  Post

  def initialize
    super
    @deadline = Time.now

  end
  def read_from_console
    puts "Что надо сделать?"
    @text = STDIN.gets.chomp
    puts "К какому числу сделать? (например 24-3-2010)"
    input = STDIN.gets.chomp
    @dedline = Date.parse(input)

  end
  def to_strings
      time_string = "Создано: #{@created_at.strftime("%Y.%m.%d, %H:%M")} \n\r \n\r"
      ded_time = "Крайний срок #{@dedline}"
      return [ded_time, @text, time_string]

  end

end
