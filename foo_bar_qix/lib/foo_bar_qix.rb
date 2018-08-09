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
    @result += "Foo" if divided_by?(3)
    @result += "Bar" if divided_by?(5)
    @result += "Qix" if divided_by?(7)
  end


  def divided_by?(divider)
    @number % divider == 0
  end


  def check_digits
    digits_to_use.each do |digit|
      add_digit_symbol(digit)
    end
  end


  def digits_to_use
    if @result.empty?
      @number.to_s.chars
    else
      @number.to_s.chars.select { |digit| ["3", "5", "7", "0"].include?(digit) }
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
