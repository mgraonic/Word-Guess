# guesses = []
#
# guess0 = [
#  "                           __/ \\--\\",
#  "                           U |_|__|",
#  "                                ||",
#  "                                ||",
#  ",   ,  ,   ,  ,   ,   ,   ,   ,  |",
#  "||__||__||__||__||__||__||__||__||",
#  "|.--..--..--..--..--..--..--..--.|",
#  "||__||__||__||__||__||__||__||__||",
#  "|.--..--..--..--..--..--..--..--.|",
#  "||  ||  ||  ||  ||  ||  ||  ||  ||"
# ]
# guess1 = [
#  "                           __/ \\--\\",
#  "                           U |_|__|",
#  "                                ||",
#  "                                ||",
#  "    ,  ,   ,  ,   ,   ,   ,   ,  |",
#  "    ||__||__||__||__||__||__||__||",
#  "    ..--..--..--..--..--..--..--.|",
#  "    ||__||__||__||__||__||__||__||",
#  "    ..--..--..--..--..--..--..--.|",
#  "||  ||  ||  ||  ||  ||  ||  ||  ||"
# ]
# guess2 = [
#  "                           __/ \\--\\",
#  "                           U |_|__|",
#  "                                ||",
#  "                                ||",
#  "        ,  ,  ,   ,   ,   ,   ,  |",
#  "        ||__||__||__||__||__||__||",
#  "        ..--..--..--..--..--..--.|",
#  "        ||__||__||__||__||__||__||",
#  "        ..--..--..--..--..--..--.|",
#  "||  ||  ||  ||  ||  ||  ||  ||  ||"
# ]
# guess3 = [
#  "                           __/ \\--\\",
#  "                           U |_|__|",
#  "                                ||",
#  "                                ||",
#  "           ,  ,   ,   ,   ,   ,  |",
#  "            ||__||__||__||__||__||",
#  "            ..--..--..--..--..--.|",
#  "            ||__||__||__||__||__||",
#  "            ..--..--..--..--..--.|",
#  "||  ||  ||  ||  ||  ||  ||  ||  ||"
# ]
# guess4 = [
#  "                           __/ \\--\\",
#  "                           U |_|__|",
#  "                                ||",
#  "                                ||",
#  "                  ,   ,   ,   ,  |",
#  "                ||__||__||__||__||",
#  "                ..--..--..--..--.|",
#  "                ||__||__||__||__||",
#  "                ..--..--..--..--.|",
#  "||  ||  ||  ||  ||  ||  ||  ||  ||"
# ]
# guess5 = [
#  "                           __/ \\--\\",
#  "                           U |_|__|",
#  "                                ||",
#  "                                ||",
#  "                      ,   ,   ,  |",
#  "                    ||__||__||__||",
#  "                    ..--..--..--.|",
#  "                    ||__||__||__||",
#  "                    ..--..--..--.|",
#  "||  ||  ||  ||  ||  ||  ||  ||  ||"
# ]
# guess6 = [
#  "                           __/ \\--\\",
#  "                           U |_|__|",
#  "                                ||",
#  "                                ||",
#  "                      ,   ,   ,  |",
#  "                    ||__||__||__||",
#  "                    ..--..--..--.|",
#  "                    ||__||__||__||",
#  "                    ..--..--..--.|",
#  "||  ||  ||  ||  ||  ||  ||  ||  ||"
# ]
# guess7 = [
#  "                           __/ \\--\\",
#  "                           U |_|__|",
#  "                                ||",
#  "                                ||",
#  "                          ,   ,  |",
#  "                        ||__||__||",
#  "                        ..--..--.|",
#  "                        ||__||__||",
#  "                        ..--..--.|",
#  "||  ||  ||  ||  ||  ||  ||  ||  ||"
# ]
# guess8 = [
#  "                           __/ \\--\\",
#  "                           U |_|__|",
#  "                                ||",
#  "                                ||",
#  "                             ,  |",
#  "                            ||__||",
#  "                            ..--.|",
#  "                            ||__||",
#  "                            ..--.|",
#  "||  ||  ||  ||  ||  ||  ||  ||  ||"
# ]
# gameover = [
#
#  "                                ||",
#  "                                ||",
#  "                                 |",
#  "                                ||",
#  "                                .|",
#  "                      __/ \\--\\  .|",
#  "                      U |_|__|  .|",
#  "||  ||  ||  ||  ||  ||  ||  ||  ||"
# ]
#
# guesses.push(guess0, guess1, guess2, guess3, guess4, guess5, guess6, guess7, guess8, gameover)

# word = %W[a a r d v a r k]

# word_length = word.length

# words_array = []
# words_array << word

# blanks =[]
# word.length.times do
#   blanks << "_"
# end

# guessed_letters = []

# counter = 0
# 6.times do
#  # counter += 1
#
#  puts
#  puts "You've guessed these letters:"
#  guessed_letters.each do | value |
#    print value.upcase
#    print " "
#  end

  # print "\nGuess a letter: "
  # letter_guess = gets.chomp.downcase

  # if guessed_letters.include?(letter_guess)
  #   puts "\nYou've already guessed this letter."
  #   counter -= 1
  # else
  #   guessed_letters << letter_guess
  # end
  # ____________
  # if !word.include?(letter_guess)
  #   puts "\nTry again."
  # end

  # word.each.with_index do |letter, index|
  #   if letter == letter_guess
  #     blanks[index] = letter_guess
  #   end
  # end

  # ______________
  # blanks.each do | value |
  #   print value
  # end

#   if (counter == 6) && (blanks != word)
#     puts "You lose."
#   end
#
#   if word == blanks
#     puts "You win!"
#     exit
#   end
# end
# p blanks
