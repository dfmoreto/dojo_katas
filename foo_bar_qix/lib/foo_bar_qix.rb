class FooBarQix

  def initialize(number)
    @result = ""
    @number = number
  end

  def compute
    check_dividers
    check_digits
    @result
  end


  private


  def check_dividers
    @result += "Foo" if @number % 3 == 0
    @result += "Bar" if @number % 5 == 0
    @result += "Qix" if @number % 7 == 0
  end


  def check_digits
    digits_to_use.each do |digit|
      add_digit_symbol(digit)
    end
  end


  def digits_to_use
    if @result.empty?
      @number.to_s.split("")
    else
      @number.to_s.split("").select { |digit| ["3", "5", "7", "0"].include?(digit) }
    end
  end


  def add_digit_symbol(digit)
    case digit
      when "3" then @result += "Foo"
      when "5" then @result += "Bar"
      when "7" then @result += "Qix"
      when "0" then @result += "*"
      else @result += digit
    end
  end
end
