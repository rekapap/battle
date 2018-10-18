require_relative 'attack'

class Poison < Attack
  DEFAULT_TURNS = 3
  def run
    @player.receive_damage(random_poison_amount)
  end

  def random_poison_amount
    random_damage_amount / 3
  end
end
