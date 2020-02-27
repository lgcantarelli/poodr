require 'trip'
require 'bycicle'
require 'customer'
require 'vehicle'

require 'driver'
require 'mechanic'
require 'trip_coordinator'

RSpec.describe Trip, '#prepare' do
  it 'should prepare the trip printing the preparers output and returning true' do
    trip = Trip.new(
      bycicles:  [Bycicle.new, Bycicle.new],
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