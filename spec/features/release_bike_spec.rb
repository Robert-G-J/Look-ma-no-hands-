describe "FEATURE: User releases a working bike" do
  dock = DockingStation.new(10)
  bike = Bike.new
  it "succesfully" do
    dock.dock(bike)
    expect(dock.release_bike).to eq bike
  end
end
