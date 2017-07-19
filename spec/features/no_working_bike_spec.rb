describe "FEATURE: No working bike in Dock" do
  dock = DockingStation.new
  bike = Bike.new
  
  it "won't release bike" do
    bike.report_broken
    dock.dock(bike)
    expect { dock.release_bike }.to raise_error "No working bikes available"
  end
end
