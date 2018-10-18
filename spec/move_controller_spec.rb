require 'move_controller'

describe MoveController do
  let(:player) { double :player}
  let(:poisoned_player) { double :poisoned_player, poisoned_turns: 2 }

  context 'attack' do
    let(:attack) { double :attack }
    let(:attack_class) { double :move_class, new: attack }
    let(:opponent) { double :opponent, poisoned_turns: 0 }
    let(:game) { double :game, opponent_of: opponent, current_turn: player }
    subject { described_class.new }

    it 'creates the move' do
      allow(game).to receive(:current_turn).and_return(player)
      allow(game).to receive(:opponent_of).with(player).and_return(opponent)
      expect(Attack).to receive(:new).with(opponent)
      subject.play(game, :attack)
    end
  end

end