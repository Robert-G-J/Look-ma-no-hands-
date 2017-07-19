class Bike

  attr_reader :broken

  def initialize
    @broken = false
  end

  def report_broken
    self.broken = true
  end
  
  private

  attr_writer :broken

end
