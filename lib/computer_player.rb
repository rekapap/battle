require_relative 'player'

class ComputerPlayer < Player
  attr_reader :name
  DEFAULT_NAME = 'Computer'

  def initialize(name = DEFAULT_NAME, hit_points = Player::DEFAULT_HIT_POINTS)
    @name = name
    @hit_points = hit_points
    @computer = true
  end
end
