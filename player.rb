class Player
  attr_accessor :lives, :name
  @@num_players = 0


  def initialize
    @@num_players += 1
    self.lives = 3
    self.name = `Player #{@@num_players}`
  end

  

end

puts Player.num_players

first = Player.new
puts first.name