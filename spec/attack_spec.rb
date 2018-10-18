require 'attack'

describe Attack do
  subject(:attack_class) { described_class }
  let(:player) { double :player }

  describe '.run' do
    it 'damages the player' do
      expect(player).to receive(:receive_damage)
      attack_class.run(player)
    end
  end
end
