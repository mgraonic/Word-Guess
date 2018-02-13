class Word
  attr_accessor :guessed_letters, :blanks, :wrong_guesses, :letters

  def initialize(word)
    @letters = word.chars
    @blanks = []
    @guessed_letters = []
    @guess = ""
    @wrong_guesses = 0
    create_blank_array
  end

  def create_blank_array
    @letters.length.times do
      @blanks << "_"
    end
  end

  def print_blanks
    @blanks.each do | value |
      print value
    end
  end

  def check_guess(guess)
    if @guessed_letters.include?(guess)
      puts "\nYou've already guessed this letter."
    else
      puts "\nCorrect!!!"
      @guessed_letters << guess
    end
    if !@letters.include?(guess)
      @wrong_guesses += 1
      puts "\nYou guessed wrong! Try again."
    end
  end

  def fill_blanks(guess)
    @letters.each.with_index do |letter, index|
      if letter == guess
        @blanks[index] = guess
      end
    end
  end

  def print_guesses
    print "Guessed letters: "
    @guessed_letters.each do | value |
      print value.upcase
      print " "
    end
  end

end

class Image
  def initialize
    @image0 = [
      "                           __/ \\--\\",
      "                           U |_|__|",
      "                                ||",
      "                                ||",
      ",   ,  ,   ,  ,   ,   ,   ,   ,  |",
      "||__||__||__||__||__||__||__||__||",
      "|.--..--..--..--..--..--..--..--.|",
      "||__||__||__||__||__||__||__||__||",
      "|.--..--..--..--..--..--..--..--.|",
      "||  ||  ||  ||  ||  ||  ||  ||  ||"
    ]
    @image1 = [
      "                           __/ \\--\\",
      "                           U |_|__|",
      "                                ||",
      "                                ||",
      "    ,  ,   ,  ,   ,   ,   ,   ,  |",
      "    ||__||__||__||__||__||__||__||",
      "    ..--..--..--..--..--..--..--.|",
      "    ||__||__||__||__||__||__||__||",
      "    ..--..--..--..--..--..--..--.|",
      "||  ||  ||  ||  ||  ||  ||  ||  ||"
    ]
    @image2 = [
      "                           __/ \\--\\",
      "                           U |_|__|",
      "                                ||",
      "                                ||",
      "        ,  ,  ,   ,   ,   ,   ,  |",
      "        ||__||__||__||__||__||__||",
      "        ..--..--..--..--..--..--.|",
      "        ||__||__||__||__||__||__||",
      "        ..--..--..--..--..--..--.|",
      "||  ||  ||  ||  ||  ||  ||  ||  ||"
    ]
    @image3 = [
      "                           __/ \\--\\",
      "                           U |_|__|",
      "                                ||",
      "                                ||",
      "           ,  ,   ,   ,   ,   ,  |",
      "            ||__||__||__||__||__||",
      "            ..--..--..--..--..--.|",
      "            ||__||__||__||__||__||",
      "            ..--..--..--..--..--.|",
      "||  ||  ||  ||  ||  ||  ||  ||  ||"
    ]
    @image4 = [
      "                           __/ \\--\\",
      "                           U |_|__|",
      "                                ||",
      "                                ||",
      "                  ,   ,   ,   ,  |",
      "                ||__||__||__||__||",
      "                ..--..--..--..--.|",
      "                ||__||__||__||__||",
      "                ..--..--..--..--.|",
      "||  ||  ||  ||  ||  ||  ||  ||  ||"
    ]
    @image5 = [
      "                           __/ \\--\\",
      "                           U |_|__|",
      "                                ||",
      "                                ||",
      "                      ,   ,   ,  |",
      "                    ||__||__||__||",
      "                    ..--..--..--.|",
      "                    ||__||__||__||",
      "                    ..--..--..--.|",
      "||  ||  ||  ||  ||  ||  ||  ||  ||"
    ]
    @image6 = [
      "                           __/ \\--\\",
      "                           U |_|__|",
      "                                ||",
      "                                ||",
      "                      ,   ,   ,  |",
      "                    ||__||__||__||",
      "                    ..--..--..--.|",
      "                    ||__||__||__||",
      "                    ..--..--..--.|",
      "||  ||  ||  ||  ||  ||  ||  ||  ||"
    ]
    @image7 = [
      "                           __/ \\--\\",
      "                           U |_|__|",
      "                                ||",
      "                                ||",
      "                          ,   ,  |",
      "                        ||__||__||",
      "                        ..--..--.|",
      "                        ||__||__||",
      "                        ..--..--.|",
      "||  ||  ||  ||  ||  ||  ||  ||  ||"
    ]
    @image8 = [
      "                           __/ \\--\\",
      "                           U |_|__|",
      "                                ||",
      "                                ||",
      "                             ,  |",
      "                            ||__||",
      "                            ..--.|",
      "                            ||__||",
      "                            ..--.|",
      "||  ||  ||  ||  ||  ||  ||  ||  ||"
    ]
    @gameover = [

      "                                ||",
      "                                ||",
      "                                 |",
      "                                ||",
      "                                .|",
      "                      __/ \\--\\  .|",
      "                      U |_|__|  .|",
      "||  ||  ||  ||  ||  ||  ||  ||  ||"
    ]
    @images = [@image0, @image1, @image2, @image3, @image4, @image5, @image6, @image7, @image8, @gameover]
  end

  def print_image(wrong_guesses)
    @images[wrong_guesses]
  end

end

new_word = Word.new("aardvark")
house = Image.new
puts "Welcome to Word Guess"
print "Word to Guess: "
new_word.print_blanks
puts "\nYou have #{9 - new_word.wrong_guesses} guesses!"
puts
puts house.print_image(0)

loop_again = true
until loop_again == false
  puts "Guess a letter!"
  print "> "
  guess = gets.chomp.downcase
  new_word.check_guess(guess)
  new_word.print_guesses
  puts
  print "Word To Guess: "
  new_word.fill_blanks(guess)
  new_word.print_blanks
  puts
  puts "You have #{9 - new_word.wrong_guesses} guesses left!"
  puts house.print_image(new_word.wrong_guesses)
  if new_word.wrong_guesses == 9 || (new_word.letters == new_word.blanks && new_word.wrong_guesses < 9)
    if new_word.letters == new_word.blanks && new_word.wrong_guesses < 9
      puts "You won!"
    else
      puts "You lost"
    end
    loop_again = false
  end
end
