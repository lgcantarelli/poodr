require 'mountain_bike'

RSpec.describe MountainBike do
  describe 'attributes' do
    before :all do
      @mountain_bike = MountainBike.new(size: 'S',
                                        front_shock: 'Manitou',
                                        rear_shock: 'Fox')
    end

    it 'should have the given size' do
      expect(@mountain_bike.size).to eq('S')
    end

    it 'should have the given front shock' do
      expect(@mountain_bike.front_shock).to eq('Manitou')
    end

    it 'should have the given rear shock' do
      expect(@mountain_bike.rear_shock).to eq('Fox')
    end

    it 'should have the default tire size' do
      expect(@mountain_bike.tire_size).to eq('2.1')
    end

    it 'should have the default chain' do
      expect(@mountain_bike.chain).to eq('10-speed')
    end
  end

  describe '#spares' do
    it 'should return the correct spares, including local and default' do
      @mountain_bike = MountainBike.new(size: 'G',
                                        front_shock: 'MerryWanna',
                                        rear_shock: 'Matz')

      expect(@mountain_bike.spares).to eq({
        tire_size:  '2.1',
        chain:      '10-speed',
        rear_shock: 'Matz'
      })
    end
  end
end