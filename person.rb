class Person
    attr_accessor :film
    def initialize(first_name, second_name, age)
      @first_name = first_name
      @second_name = second_name
      @age = age
      @film = nil
    end

    def old?
      return @age >=60
    end


    def full_name
      if old?
      return "#{@first_name}  #{@second_name}"
      else
      return "#{@first_name}"
    end
  end
  def age
    return @age
  end
end
