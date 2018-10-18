require_relative 'attack'
require_relative 'poison'

class MoveController

  def initialize
    @classes = {
      attack: Attack,
      poison: Poison
    }
  end

  def play(game, instruction)
    opponent = game.opponent_of(game.current_turn)
    move_class = @classes[instruction]
    move_class.new(opponent) if opponent.poisoned_turns.zero?
    # opponent.poisoned_turns.zero?
    
  end

end
