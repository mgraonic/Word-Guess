class Word
  attr_accessor :word_array, :word_hash

  def initialize(new_word)
    @word = new_word
    @word_array = []
    arrayify
    @word_hash = {}
    hashify
  end

  def arrayify
    @word.each_char do |char|
      @word_array << char
    end
  end

  def hashify
    @word_array.each.with_index do |chr, index|
      @word_hash[chr] = index
    end
  end
end

torsword = Word.new("taco")

# puts torsword
p torsword.word_array
p torsword.word_hash
