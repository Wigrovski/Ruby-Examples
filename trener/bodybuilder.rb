class BodyBuilder
  def initialize
    @biceps = 0
    @triceps = 0
    @delta = 0
  end
  def pump(muscle)
    case muscle
    when 'biceps'
      @biceps += 1
    when 'triceps'
      @triceps += 1
    when 'delta'
      @delta += 1
    end
  end
  def show_muscle
    puts "Бицепсы: #{@biceps}"
    puts "Трицепс: #{@triceps}"
    puts "Дельтовидка: #{@delta}"

  end
end
