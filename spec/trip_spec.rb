require 'trip'
require 'mountain_bike'
require 'road_bike'
require 'customer'
require 'vehicle'

require 'driver'
require 'mechanic'
require 'trip_coordinator'

RSpec.describe Trip, '#prepare' do
  it 'should prepare the trip printing the preparers output and returning true' do
    trip = Trip.new(
      bycicles:  [
        RoadBike.new(size: 'S', tape_color: 'Blue'),
        MountainBike.new(size: 'G', front_shock: 'DDS', rear_shock: 'Malibu')
      ],
      customers: [Customer.new],
      vehicle:   Vehicle.new
    )

    preparers = [
      Driver.new,
      Mechanic.new,
      TripCoordinator.new
    ]

    expect(trip.prepare(preparers)).to be true
  end
end