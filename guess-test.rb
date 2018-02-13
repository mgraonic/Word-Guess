# loop through letter_array [a a d v a r k]
# find unique letters [a d v r k]
# find keys for these unique letters in letter_hash

# thought = "thought".chars

# "thought"
#
# letter_hash = {0=>"a", 1=>"a", 2=>"r", 3=>"d", 4=>"v", 5=>"a", 6=>"r", 7=>"k"}
#
#
#
# a_array = [] w
#
# letter_hash.each do |index, letter|
#   if letter == "h"
#     a_array << index
#   end
# end
# print a_array
#
# p thought
# unique_letters_only = thought.uniq
# p unique_letters_only

# use Faker for words??
# creates word as a hash, can also do word.chars
word = %W[a a r d v a r k]

# creates blanks array and loads as many
# blanks as letters
blanks =[]
word.length.times do
  blanks << "_"
end

#prints blanks
puts "_" * word.length

# for each letter in the word array,
# take each value with corresponding index
# assign the value at the same index
# in the blanks array

word.each.with_index do |letter, index|
  blanks[index] = letter
end

# check if user input is in guessed_letters
# if no, load it in
# if yes, print a message to try again




# duplicate_letters = []
# p thought
#
# thought.each.with_index do |char, index|
#   p char
#   p index
#   thought.delete_at(index)
#   p thought
#     if thought.include?(char)
#       duplicate_letters << char
#     end
# end
#
# p duplicate_letters
