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
      @guessed_letters << guess
    end
    if !@letters.include?(guess)
      @wrong_guesses += 1
      puts "\nYou guessed wrong! Try again."
    else
      puts "\nCorrect!!!"
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
    print "\nGuessed letters: "
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

class Game
  attr_reader :start_game, :game_play
  def initialize(word, image)
    @word = word
    @image = image
  end

  def start_game
    print "Word to Guess: "
    @word.print_blanks
    puts "\nYou have #{9 - @word.wrong_guesses} guesses!"
    puts
    puts @image.print_image(0)
  end

  def game_play
    loop_again = true
    until loop_again == false
      puts "\n\nGuess a letter!"
      print "> "
      guess = gets.chomp.downcase
      @word.check_guess(guess)
      @word.print_guesses
      puts
      print "Word To Guess: "
      @word.fill_blanks(guess)
      @word.print_blanks
      puts "\nYou have #{9 - @word.wrong_guesses} guesses left!"
      puts @image.print_image(@word.wrong_guesses)
      if @word.wrong_guesses == 9 || (@word.letters == @word.blanks && @word.wrong_guesses < 9)
        if @word.letters == @word.blanks && @word.wrong_guesses < 9
          puts "You won!"
        else
          puts "You lost"
        end
        loop_again = false
      end
    end
  end

end
