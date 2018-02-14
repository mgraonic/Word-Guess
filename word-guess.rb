require "faker"
require_relative "word-guess-classes.rb"

word = Word.new(Faker::Science.element)
game_image = Image.new
new_game = Game.new(word, game_image)


puts "Welcome to Word Guess"
new_game.start_game
new_game.game_play

play_new_game = true
until play_new_game == false
  puts "Would you like to play a new game?"
  print "> "
  play_on = gets.chomp.downcase
  if play_on == "yes"
    random_word = Word.new(Faker::Science.element)
    game_2 = Game.new(random_word, game_image)
    game_2.start_game
    game_2.game_play
  else
    puts "Thanks for playing Word Guess!"
    play_new_game = false
  end
end
