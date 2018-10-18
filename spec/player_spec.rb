require 'player'

describe Player do
  let(:vin_diesel_name) { 'Vin Diesel' }
  subject(:vin_diesel) { described_class.new(vin_diesel_name) }
  let(:the_rock_name) { 'The Rock' }
  subject(:the_rock) { described_class.new(the_rock_name) }
  describe '#name' do
    it 'has a name' do
      expect(vin_diesel.name).to eq vin_diesel_name
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(vin_diesel.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { the_rock.receive_damage(10) }.to change { the_rock.hit_points }.by(-10)
    end
  end
end
