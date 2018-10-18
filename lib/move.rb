#  Move
class Move
  attr_reader :rate
  DEFAULT_TURNS = 1
  def initialize(player) #, attack_turns = DEFAULT_TURNS)
    @player = player
    @change_opponent_turn = false
    @attack_turns = DEFAULT_TURNS #attack_turns
  end

  def self.run(player)
    new(player).run
  end

  def change_opponent_turn?
    @change_opponent_turn
  end

  def run; end

end
