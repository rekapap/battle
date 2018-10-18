#  Move
class Move
  def initialize(player)
    @player = player
    @change_next_turn = false
    @change_opponents_turn = false
  end

  def self.run(player)
    new(player).run
  end

  protected

  def run; end
end
