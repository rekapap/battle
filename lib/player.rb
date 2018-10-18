# Player
class Player
  attr_reader :name, :hit_points, :poisoned_turns
  DEFAULT_HIT_POINTS = 60
  def initialize(name, hit_points = DEFAULT_HIT_POINTS)
    @name = name
    @hit_points = hit_points
    @computer = false
    @poisoned_turns = 0
  end

  def receive_damage(amount)
    @hit_points -= amount
  end

  def computer?
    @computer
  end

  def poisoned_turns=(amount)
    @poisoned_turns = amount
  end
end
