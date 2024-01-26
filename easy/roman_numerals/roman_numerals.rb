# to_roman
# Convert to Roman Numerals 
#   Initialize a variable with an empty string to save the Roman conversion.
#   Iterate over the Roman Numerals collection:
#   If the numeric value of the current Roman numeral is less than the value of the input number,
#   add the Roman numerals to the string as many times as its value can fit. 
#   Subtract the numeric value of the added Roman numerals from the current input value,
#   and use the new input value in subsequent iterations. 
  
# return the string 
class RomanNumeral
  attr_accessor :number 
  
  ROMAN_NUMERALS = {
    "M" => 1000,
    "CM" => 900,
    "D" => 500,
    "CD" => 400,
    "C" => 100,
    "XC" => 90,
    "L" => 50,
    "XL" => 40,
    "X" => 10,
    "IX" => 9,
    "V" => 5,
    "IV" => 4,
    "I" => 1
  }
  
  def initialize(num)
    @number = num 
  end 

  def to_roman 
    roman_string = ''
    ROMAN_NUMERALS.each do |key, value| 
      dividend, remainder = number.divmod(value)
      if dividend > 0 
        roman_string += (key * dividend)
      end 
      self.number = remainder
    end 
    roman_string
  end 
end 