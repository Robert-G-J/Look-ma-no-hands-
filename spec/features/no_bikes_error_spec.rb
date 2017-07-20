RSpec.describe "Features: " do
  it "Raises error when user takes bike from empty dock" do
    dock = DockingStation.new
    expect { dock.release_bike }.to raise_error 'No bikes available'
  end
end
