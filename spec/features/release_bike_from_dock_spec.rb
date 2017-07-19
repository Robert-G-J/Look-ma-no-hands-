describe "Features: " do
  dock = DockingStation.new
  it "Raises error when user takes bike from empty dock" do
    expect { dock.release_bike }.to raise_error 'No bikes available'
  end
end
