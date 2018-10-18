require 'poison'

describe Poison do
  subject(:poison_class) { described_class }
  let(:player) { double :player, :poisoned_turns => 1, :poisoned_turns= => nil}
  subject { described_class.new(player) }
  before do
    allow(Kernel).to receive(:rand).and_return(10)
  end
  describe '.run' do
    it 'damages the player by 3' do
      expect(player).to receive(:receive_damage).with(3)
      poison_class.run(player)
    end
  end

  describe '#change_opponent_turn?' do
    it 'false by default' do
      expect(subject.change_opponent_turn?).to eq false
    end
  end

  describe '.poison_damage' do
    let(:player) { double :player, :poisoned_turns= => 1, :poisoned_turns => 1 }
    it 'deal poison damage for a player' do
      allow(player).to receive(:receive_damage).with(3)
      described_class.poison(player)
      # expect(player.poisoned_turns).to change
    end
  end
end
