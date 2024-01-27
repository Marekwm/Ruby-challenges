=begin
create a PerfectNumber class 
create the classify class methods that takes an integer as an arugment 
 raise a StandardError if the argument is not a natural number
 pass the number to the find_divisor method and assign the sum to `sum_of_divisors`
 
 use a case statement to for sum_of_divisors 
 if it's equal to the number then return 'perfect'
 if it's greater than the number then return 'abundant'
 if it's less then return 'deficient'
=end 

class PerfectNumber 
  def self.classify(number)
    raise StandardError.new if number < 1
    
    sum_of_divisors = self.get_sum_of_divisors(number)
    
    if sum_of_divisors == number
     'perfect'
    elsif sum_of_divisors > number
     'abundant'
    else 
      'deficient'
    end
    
  end 
 
  class << self
    private
    
    def get_sum_of_divisors(number)
      divisors = []
      1.upto(number - 1) do |num| 
        divisors << num if number % num == 0
      end 
      divisors.sum
    end 
  end
end 