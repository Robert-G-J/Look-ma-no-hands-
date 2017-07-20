require_relative 'docking_station'

class Van

  attr_reader :bikes

  def initialize
    @bikes = [] 
  end

  def collect(docking_station)
    raise 'No broken bikes to collect' if broken_bikes?(docking_station) == false
    docking_station.bikes.delete_if { |bike| bikes << bike if bike.broken }
  end

  private

  attr_writer :bikes

  def broken_bikes?(docking_station)
    docking_station.bikes[0].broken
  end

end
