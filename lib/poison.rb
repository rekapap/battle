require_relative 'attack'

class Poison < Attack
  DEFAULT_TURNS = 3
  def run
    @player.receive_damage(random_poison_amount)
    @player.poisoned_turns = @player.poisoned_turns - 1
  end

  def random_poison_amount
    random_damage_amount / 3
  end

  def self.poison(player)
    player.poisoned_turns = player.poisoned_turns + (DEFAULT_TURNS)
    run(player)
  end
end
