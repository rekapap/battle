require 'attack'

describe Attack do
  subject(:attack_class) { described_class }
  let(:player) { double :player }
  subject { described_class.new(player) }
  describe '.run' do
    it 'damages the player' do
      expect(player).to receive(:receive_damage)
      attack_class.run(player)
    end
  end

  describe '#change_opponent_turn?' do
    it 'false by default' do
      expect(subject.change_opponent_turn?).to eq false
    end
  end
end
