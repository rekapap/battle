require 'move'

describe Move do
  subject(:move_class) { described_class }
  let(:player) { double :player }
  let(:move) { double :move, run: true }

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
end
