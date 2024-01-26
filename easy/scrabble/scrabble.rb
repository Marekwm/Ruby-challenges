class Scrabble
  attr_accessor :word
  
  SCORES = {
    'AEIOULNRST'=> 1,
    'DG' =>	2,
    'BCMP' =>	3,
    'FHVWY'	=> 4,
    'K' => 5,
    'JX' =>	8,
    'QZ' =>	10
  }
  
  def initialize(word)
    @word = word ? word : ''
  end 
  
  def score 
    characters = word.upcase.gsub(/[^A-Z]/, '').chars
    
    counter = 0
    characters.each do |char|
      SCORES.each do |letters, value|
        counter += value if letters.include?(char)
      end 
    end 
    counter
  end 
  
  def self.score(str)
    Scrabble.new(str).score
  end 
end 