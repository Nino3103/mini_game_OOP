class Game

  attr_accessor :human_player
  attr_accessor :ennemies


  def initialize(name, number_of_ennemies = 4)
    @human_player = HumanPlayer.new(name)
    @ennemies = Array.new(number_of_ennemies){|i|"creature_#{i}"}.map {|creature| Player.new("#{creature}")}
    # @players_left = number_enemies
    # @enemies_tot = number_enemies
    # @enemies_in_sight = []
  end

  def kill_player(player)
    @ennemies.delete_if{|player| player.name == player.to_s}
  end

#a_of_obj.delete_if {|obj| obj.a == 33}
end
