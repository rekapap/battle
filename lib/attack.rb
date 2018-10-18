require_relative 'move'
# Attack
class Attack < Move
  def run
    @player.receive_damage(random_damage_amount)
  end

  private

  def random_damage_amount
    Kernel.rand(1..10)
  end
end
