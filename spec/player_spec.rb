require 'player'

describe Player do
  let(:vin_diesel_name) { 'Vin Diesel' }
  subject(:vin_diesel) { described_class.new(vin_diesel_name) }
  describe '#name' do
    it 'has a name' do
      expect(vin_diesel.name).to eq vin_diesel_name
    end
  end
end
