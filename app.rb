require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'



# 
# player1 = Player.new("Josiane")
# player2 = Player.new("José")
#
# puts "Voici l'état des combattants"
# puts "#{player1.show_state}"
# puts "#{player2.show_state}"
#
# puts "Que le combat commence !"
#
#
# round = 2
# while player1.life_points >0 || player2.life_points >0 do
#
#   puts " "
#   puts "Round #{round} : voici l'état des combattants"
#   puts " "
#   puts "#{player1.show_state}"
#   puts "#{player2.show_state}"
#
#   puts "C'est l'heure du nouvel assaut !"
#
#   player1.attack(player2)
#   break if player2.life_points <= 0
#   player2.attack(player1)
#
#   round += 1
# end

binding.pry
