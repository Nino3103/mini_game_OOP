require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'



puts " -------------------------------"
puts "                                "
puts " WELCOME ! LET'S PLAY A GAME !  "
puts " Le dernier survivant gagne !!! "
puts "                                "
puts " -------------------------------"
puts "                                "
puts "                                "
puts "                                "

# initialisation du nom du joueur humain

puts " QUEL EST TON NOM DE JOUEUR ?"
human_player_name = gets.chomp
human_player = HumanPlayer.new(human_player_name)


# initialisation des adversaires José et Josiane

ennemies = []
josiane = Player.new("Josiane")
jose = Player.new("José")

ennemies << josiane
ennemies << jose

while human_player.life_points >0 && (josiane.life_points >0 || jose.life_points >0) do

  # le joueur décide ce qu'il veut faire

  puts " "
  puts " "
  puts " --- NOUVEAU TOUR A JOUER ! ---"
  puts " "
  puts "Voici ton état de santé"
  puts "#{human_player.show_state}"
  puts "Voici l'état de ton arme"
  puts "Niveau #{human_player.weapon_level}"
  puts " "
  puts "Que veux-tu effectuer ?"
  puts " "
  puts "a - chercher une meilleure arme"
  puts "s - chercher à se soigner "
  puts " "
  puts "attaquer un joueur en vue :"
  puts "0 - Josiane a #{josiane.show_state} points de vie" if josiane.life_points > 0
  puts "1 - José a #{jose.show_state} points de vie" if jose.life_points > 0
  choice = gets.chomp
  case choice
  when "a"
    human_player.search_weapon
  when "s"
    human_player.search_health_pack
  when "0"
    human_player.attack(josiane)
  else
    human_player.attack(jose)
  end

  # les ennemies attaquent

  puts " "
  puts "C'est aux adversaires d'attaquer !" if ennemies.map(&:life_points).inject(:+) > 0
  ennemies.each do |ennemy|
    ennemy.attack(human_player) if ennemy.life_points > 0
  end


end


puts human_player.life_points > 0 ? "BRAVO TU AS GAGNE" : "YOU ARE DEAD... TRY AGAIN"







binding.pry
