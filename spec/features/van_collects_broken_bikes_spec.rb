require './lib/van.rb'

RSpec.describe "FEATURE: Van" do
  describe "Collection:" do
    dock = DockingStation.new
    bike = Bike.new
    bike2 = Bike.new
    van = Van.new
    
    it "Collects all the broken bikes from a dock" do
      bike.report_broken
      dock.dock(bike)
      dock.dock(bike2)
      van.collect(dock)
      expect(van.bikes).to eq([bike])
    end
  end
end
