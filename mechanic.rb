class Mechanic
  def prepare_trip(trip)
    trip.bycicles.each do |bycicle|
      prepare_bycicle(bycicle)
    end
  end

  def prepare_bycicle(bycicle)
    p 'Bycicle prepared by the mechanic.'
  end
end