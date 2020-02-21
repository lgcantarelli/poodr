class Trip
  attr_reader :bycicles, :customers, :vehicle

  def initialize(args = {})
    @bycicles  = args[:bycicles]
    @customers = args[:customers]
    @vehicle   = args[:vehicle]
  end

  def prepare(preparers)
    preparers.each do |preparer|
      preparer.prepare_trip(self)
    end
  end
end