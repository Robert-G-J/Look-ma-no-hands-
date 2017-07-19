RSpec.describe "FEATURE: User can't dock at full station" do
  dock = DockingStation.new(1)
  bike = Bike.new
  it "Raises error when tries" do
    dock.dock(bike)
    expect { dock.dock(bike) }.to raise_error 'Cannot dock at full station' 
  end
end
