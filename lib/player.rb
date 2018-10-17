# Player
class Player
  attr_reader :name, :hit_points
  DEFAULT_HIT_POINTS = 60
  ATTACK_POINT = 10
  def initialize(name, hit_points = DEFAULT_HIT_POINTS)
    @name = name
    @hit_points = hit_points
  end

  def attack(player)
    player.receive_damage
  end

  def receive_damage
    @hit_points -= ATTACK_POINT
  end
end
