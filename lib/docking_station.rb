require_relative 'bike'

class DockingStation 

  attr_reader :bikes, :capacity

  DEFAULT_CAPACITY = 10

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = [] 
  end

  def release_bike
    raise 'No bikes available' if empty?
    raise 'No working bikes available' if bikes[-1].broken
    bikes.pop
  end

  def dock(bike)
    raise 'Cannot dock at full station' if full?
    bike.broken ? bikes.unshift(bike) : bikes << bike
  end
  
  private
  attr_writer :bikes

  def empty?
    bikes.empty?
  end

  def full?
    bikes.count >= capacity
  end
end
