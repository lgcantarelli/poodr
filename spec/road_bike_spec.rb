require 'road_bike'

RSpec.describe RoadBike do
  describe 'attributes' do
    before :all do
      @road_bike = RoadBike.new(size: 'M',
                                tape_color: 'Red')
    end

    it 'should have the given size' do
      expect(@road_bike.size).to eq('M')
    end

    it 'should have the given tape color' do
      expect(@road_bike.tape_color).to eq('Red')
    end

    it 'should have the default tire size' do
      expect(@road_bike.tire_size).to eq('23')
    end

    it 'should have the default chain' do
      expect(@road_bike.chain).to eq('10-speed')
    end
  end

  describe '#spares' do
    it 'should return the correct spares, including local and default' do
      @road_bike = RoadBike.new(size: 'M',
                                tape_color: 'Purple')

      expect(@road_bike.spares).to eq({
        tire_size:  '23',
        chain:      '10-speed',
        tape_color: 'Purple'
      })
    end
  end
end