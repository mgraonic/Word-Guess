class Word
  attr_accessor :letter_array, :letter_hash

  def initialize(new_word)
    @new_word = new_word
    @letter_array = []
    arrayify
    @letter_hash = {}
    hashify
  end

  def arrayify
    @new_word.each_char do |char|
      @letter_array << char
    end
  end

  def hashify
    @letter_array.each.with_index do |chr, index|
      @letter_hash[index] = chr
    end
  end
end

torsword = Word.new("aardvark")

# puts torsword
p torsword.letter_array
p torsword.letter_hash
