require './trip.rb'

require './bycicle.rb'
require './customer.rb'
require './vehicle.rb'

require './driver.rb'
require './mechanic.rb'
require './trip_coordinator.rb'

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

trip.prepare(preparers)