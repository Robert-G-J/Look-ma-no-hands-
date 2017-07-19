describe "FEATURE: User releases a bike" do
  dock = DockingStation.new(10)
  bike = Bike.new
  it "Releases a single bike" do
    dock.dock(bike)
    expect(dock.release_bike).to eq bike
  end
end
