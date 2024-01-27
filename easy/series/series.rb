class Series 
  attr_accessor :numbers
  
  def initialize(str)
    @numbers = str
  end 
  
  def slices(chunk)
    raise ArgumentError if chunk > numbers.size
    results = []
    numbers.chars.each_cons(chunk) do |subarr|
      results << subarr.map(&:to_i)
    end 
    results
  end 
end 

p Series.new('12345').slices(2)
      