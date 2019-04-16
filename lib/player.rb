class Player

  attr_accessor :name
  attr_accessor :life_points

  def initialize(player_name)
    @name = player_name
    @life_points = 10
  end


  def show_state
    return  "#{@name} a #{life_points} points de vie"
  end


  def gets_damage(damage)
    @life_points -= damage
    if @life_points <= 0
      puts  "le joueur #{@name} a été tué !"
    end
  end


  def compute_damage
    return rand(1..6)
  end


  def attack(other_player)
    puts "Le joueur #{self.name} attaque le joueur #{other_player.name}"
    damage = compute_damage
    other_player.gets_damage(damage)
    puts "Il lui inflige #{damage} points de dégats !"
  end

end


##############


class HumanPlayer < Player

  attr_accessor :weapon_level

  def initialize(player_name)

    @weapon_level = 1
    super(player_name)
    @life_points = 100

  end

  def compute_damage
    rand(1..6) * @weapon_level
  end


  def search_weapon
    level = rand(1..6)
    puts "Tu as trouvé une arme de niveau #{level}"
    if level > @weapon_level
      puts "Youhou ! elle est meilleure que ton arme actuelle : tu la prends."
      @weapon_level = level
    else
      puts "M@*#$... elle n'est pas mieux que ton arme actuelle..."
    end
  end


  def search_health_pack
    dice = rand(1..6)
    case dice
    when 1
      puts "Tu n'as rien trouvé... "
    when /[2-5]/
      @life_points += 50
      @life_points > 100 ? @life_points = 100 : @life_points = @life_points
      puts "Bravo, tu as trouvé un pack de +50 points de vie !"
    else
      @life_points += 80
      @life_points > 100 ? @life_points = 100 : @life_points = @life_points
      puts "Waow, tu as trouvé un pack de +80 points de vie !"
    end

  end


end
