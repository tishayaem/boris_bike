require_relative 'bike'

class DockingStation
  attr_reader :bike

  def release_bike
    fail 'No bikes available' unless @bike
    @bike
  end

  def dock(bike)
    fail 'No space available' if @bike
    @bike = bike
  end

  def bike
    @bike
  end

end
