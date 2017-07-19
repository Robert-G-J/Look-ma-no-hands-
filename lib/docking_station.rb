require_relative 'bike'

class DockingStation 

  attr_reader :bikes, :capacity

  DEFAULT_CAPACITY = 10

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = [] 
  end

  def release_bike
    raise 'No bikes available'
  end

  def dock(bike)
    raise 'Cannot dock at full station' if bikes.count >= self.capacity
    self.bikes << bike 
  end
  
  private
  attr_writer :bikes
end
