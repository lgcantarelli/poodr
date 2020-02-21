class TripCoordinator
  def prepare_trip(trip)
    buy_food(trip.customers)
  end

  def buy_food(costumers)
    p 'Costumers food bought by the trip coordinator.'
  end
end