require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'


puts 'Choisis ton nom jeune combattant(e) !!!'
user = gets.chomp.to_s

my_game = Game.new(user)
binding.pry
