require 'colorize'

class Word
  attr_accessor :guessed_letters, :blanks, :wrong_guesses, :letters, :name

  def initialize(word)
    @name = word
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
      puts "\nYou've already guessed this letter.".colorize(:yellow)
    else
      @guessed_letters << guess
    end
    if !@letters.include?(guess)
      if guess.empty?
        puts "No letter inputted. Try again."
      else
        @wrong_guesses += 1
        puts "\nYou guessed wrong! Try again.".colorize(:red)
      end
    else
        puts "\nCorrect!!!".colorize(:green)
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
      "                           __/ \\--\\".colorize(:red),
      "                           U |_|__|".colorize(:light_red),
      "                                ||".colorize(:yellow),
      "                                ||".colorize(:green),
      ",   ,   ,   ,   ,   ,   ,   ,   ,|".colorize(:blue),
      "||__||__||__||__||__||__||__||__||".colorize(:magenta),
      "|.--..--..--..--..--..--..--..--.|".colorize(:red),
      "||__||__||__||__||__||__||__||__||".colorize(:light_red),
      "|.--..--..--..--..--..--..--..--.|".colorize(:yellow),
      "||  ||  ||  ||  ||  ||  ||  ||  ||".colorize(:green)
    ]
    @image1 = [
      "                           __/ \\--\\".colorize(:red),
      "                           U |_|__|".colorize(:light_red),
      "                                ||".colorize(:yellow),
      "                                ||".colorize(:green),
      "    ,   ,   ,   ,   ,   ,   ,   ,|".colorize(:blue),
      "    ||__||__||__||__||__||__||__||".colorize(:magenta),
      "    ..--..--..--..--..--..--..--.|".colorize(:red),
      "    ||__||__||__||__||__||__||__||".colorize(:light_red),
      "    ..--..--..--..--..--..--..--.|".colorize(:yellow),
      "||  ||  ||  ||  ||  ||  ||  ||  ||".colorize(:green)
    ]
    @image2 = [
      "                           __/ \\--\\".colorize(:red),
      "                           U |_|__|".colorize(:light_red),
      "                                ||".colorize(:yellow),
      "                                ||".colorize(:green),
      "        ,   ,   ,   ,   ,   ,   ,|".colorize(:blue),
      "        ||__||__||__||__||__||__||".colorize(:magenta),
      "        ..--..--..--..--..--..--.|".colorize(:red),
      "        ||__||__||__||__||__||__||".colorize(:light_red),
      "        ..--..--..--..--..--..--.|".colorize(:yellow),
      "||  ||  ||  ||  ||  ||  ||  ||  ||".colorize(:green)
    ]
    @image3 = [
      "                           __/ \\--\\".colorize(:red),
      "                           U |_|__|".colorize(:light_red),
      "                                ||".colorize(:yellow),
      "                                ||".colorize(:green),
      "            ,   ,   ,   ,   ,   ,|".colorize(:blue),
      "            ||__||__||__||__||__||".colorize(:magenta),
      "            ..--..--..--..--..--.|".colorize(:red),
      "            ||__||__||__||__||__||".colorize(:light_red),
      "            ..--..--..--..--..--.|".colorize(:yellow),
      "||  ||  ||  ||  ||  ||  ||  ||  ||".colorize(:green)
    ]
    @image4 = [
      "                           __/ \\--\\".colorize(:red),
      "                           U |_|__|".colorize(:light_red),
      "                                ||".colorize(:yellow),
      "                                ||".colorize(:green),
      "                ,   ,   ,   ,   ,|".colorize(:blue),
      "                ||__||__||__||__||".colorize(:magenta),
      "                ..--..--..--..--.|".colorize(:red),
      "                ||__||__||__||__||".colorize(:light_red),
      "                ..--..--..--..--.|".colorize(:yellow),
      "||  ||  ||  ||  ||  ||  ||  ||  ||".colorize(:green)
    ]
    @image5 = [
      "                           __/ \\--\\".colorize(:red),
      "                           U |_|__|".colorize(:light_red),
      "                                ||".colorize(:yellow),
      "                                ||".colorize(:green),
      "                    ,   ,   ,   ,|".colorize(:blue),
      "                    ||__||__||__||".colorize(:magenta),
      "                    ..--..--..--.|".colorize(:red),
      "                    ||__||__||__||".colorize(:light_red),
      "                    ..--..--..--.|".colorize(:yellow),
      "||  ||  ||  ||  ||  ||  ||  ||  ||".colorize(:green)
    ]
    @image6 = [
      "                           __/ \\--\\".colorize(:red),
      "                           U |_|__|".colorize(:light_red),
      "                                ||".colorize(:yellow),
      "                                ||".colorize(:green),
      "                    ,   ,   ,   ,|".colorize(:blue),
      "                    ||__||__||__||".colorize(:magenta),
      "                    ..--..--..--.|".colorize(:red),
      "                    ||__||__||__||".colorize(:light_red),
      "                    ..--..--..--.|".colorize(:yellow),
      "||  ||  ||  ||  ||  ||  ||  ||  ||".colorize(:green)
    ]
    @image7 = [
      "                           __/ \\--\\".colorize(:red),
      "                           U |_|__|".colorize(:light_red),
      "                                ||".colorize(:yellow),
      "                                ||".colorize(:green),
      "                        ,   ,   ,|".colorize(:blue),
      "                        ||__||__||".colorize(:magenta),
      "                        ..--..--.|".colorize(:red),
      "                        ||__||__||".colorize(:light_red),
      "                        ..--..--.|".colorize(:yellow),
      "||  ||  ||  ||  ||  ||  ||  ||  ||".colorize(:green)
    ]
    @image8 = [
      "                           __/ \\--\\".colorize(:red),
      "                           U |_|__|".colorize(:light_red),
      "                                ||".colorize(:yellow),
      "                                ||".colorize(:green),
      "                            ,   ,|".colorize(:blue),
      "                            ||__||".colorize(:magenta),
      "                            ..--.|".colorize(:red),
      "                            ||__||".colorize(:light_red),
      "                            ..--.|".colorize(:yellow),
      "||  ||  ||  ||  ||  ||  ||  ||  ||".colorize(:green)
    ]
    @gameover = [

      "                                ||".colorize(:red),
      "                                ||".colorize(:light_red),
      "                                 |".colorize(:yellow),
      "                                ||".colorize(:blue),
      "                                .|".colorize(:magenta),
      "                      __/ \\--\\  .|".colorize(:red),
      "                      U |_|__|  .|".colorize(:light_red),
      "||  ||  ||  ||  ||  ||  ||  ||  ||".colorize(:yellow)
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
          puts "You lost!"
          puts "Your word was #{@word.name.upcase}!"
        end
        loop_again = false
      end
    end
  end

end
