class Driver
  def prepare_trip(trip)
    vehicle = trip.vehicle
    gas_up(vehicle)
    fill_water_tank(vehicle)

    true
  end

  def gas_up(vehicle)
    p "Vehicle's gas tank filled by the driver."
  end

  def fill_water_tank(vehicle)
    p "Vehicle's water tank filled by the driver."
  end
end