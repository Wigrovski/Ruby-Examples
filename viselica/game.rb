class Game

  def initialize(slovo)
      @latters = get_latters(slovo)
      @errors = 0
      @bad_latters = []
      @good_latters = []
      @status
  end
  def get_latters(slovo)
    if (slovo == nil || slovo == "")
      abort "Не загадали слово"
    end
    return slovo.encode("UTF-8").split('')
  end
  def ask_latter
    puts "\nвведите следующую букву"
    latter = ""
    while latter == "" do

      latter = STDIN.gets.encode("UTF-8").chomp.downcase
    end
    next_step(latter)
  end
  def next_step(bukva)
     if @status == -1 || @status == 1
       return
     end
     if (good_latters.include?(bukva) || bad_latters.include?(bukva))
       return
     end
     if @latters.include?(bukva)
       good_latters << bukva
       if good_latters.size == @latters.uniq.size
         @status = 1
       end
     else
       @bad_latters << bukva
       @errors +=1
       if @errors >= 7
         @status = -1
       end

     end
  end
  def latters
     @latters
  end
  def good_latters
    @good_latters
  end
  def bad_latters
    @bad_latters
  end
  def status
    @status
  end
  def errors
    @errors
  end
end
