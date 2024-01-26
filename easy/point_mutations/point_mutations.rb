class DNA 
  attr_reader :strand 
  
  def initialize(strand)
    @strand = strand 
  end 
  
  def hamming_distance(other)
    counter = 0
    shortest = strand.size < other.size ? strand : other
    shortest.chars.each_index do |idx| 
      counter += 1 if strand[idx] != other[idx]
    end 
    counter
  end 
end 