require 'move'

describe Move do
  let(:player) { double :player }
  subject(:move_class) { described_class }
  subject(:move) { described_class.new(player) }

  describe '.run' do
    it 'creates an instance of itself' do
      expect(described_class).to receive(:new).and_return(move)
      move_class.run(player)
    end
    it 'calls #run on the created instance' do
      allow(described_class).to receive(:new).with(player).and_return(move)
      expect(move).to receive(:run)
      move_class.run(player)
    end
  end

  describe '#change_opponent_turn?' do
    it 'false by default' do
      expect(subject.change_opponent_turn?).to eq false
    end
  end
end
