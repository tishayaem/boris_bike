require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' if empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'No space available' if full?
    @bikes << bike
  end

  private
    def full?
      @bikes.count >= 20
    end

  private
    def empty?
      @bikes.empty?
    end

end
