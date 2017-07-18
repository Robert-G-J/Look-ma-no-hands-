class DockingStation 

  attr_reader :bikes

  def initialize
    @bikes = [] 
  end

  def release_bike
    raise 'No bikes available'
  end

  def dock(bike)
    self.bikes << bike 
  end
  
  private
  attr_writer :bikes
end
