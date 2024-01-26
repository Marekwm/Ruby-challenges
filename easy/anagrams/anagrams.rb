class Anagram 
  attr_reader :word 
  
  def initialize(word)
    @word = word.downcase
  end 
  
  def match(arr) 
    arr.select do |str| 
      str.downcase != word && anagram?(str)
    end
  end 
  
  private 
  
  def sorted_letters(str)
    str.downcase.chars.sort.join
  end 
  
  def anagram?(other)
    sorted_letters(word) == sorted_letters(other)
  end 
end 

