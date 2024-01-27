class SumOfMultiples
  attr_accessor :multiples 
  
  def self.to(number)
    SumOfMultiples.new.to(number)
  end 
  
  def initialize(*multiples)
    @multiples = multiples.size > 0 ? multiples : [3, 5]
  end
  
  def to(max_number)
    results = []
    multiples.each do |multiple|
      1.upto(max_number - 1) do |num| 
        results << num if num % multiple == 0 
      end 
    end 
    results.uniq.sum
  end 
end 