class Octal 
  attr_accessor :number
  
  def initialize(number)
    @number = number 
  end 
  
  def to_decimal 
    return 0 if number.match?(/[89a-zA-Z]/)
    flipped_arr = number.to_i.digits
    
    sum = 0
    
    flipped_arr.each_with_index do |num, idx|
      sum += (num * (8 ** idx))
    end 
    sum
  end 
end 

p Octal.new('1').to_decimal