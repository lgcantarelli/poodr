class Trip
  attr_reader :bycicles, :customers, :vehicle

  def initialize(args = {})
    @bycicles  = args[:bycicles]
    @customers = args[:customers]
    @vehicle   = args[:vehicle]
  end

  def prepare(preparers)
    preparations = []
      
    preparers.each do |preparer|
      preparations << preparer.prepare_trip(self)
    end

    preparations.all? { |p| p == true }
  end
end