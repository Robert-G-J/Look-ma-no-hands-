require 'docking_station'

describe DockingStation do
  subject(:dock) { described_class.new(1) }
  let(:bike) { double(:bike) }

  describe "#dock" do
   it "stores bike object" do
      dock.dock(bike)
      expect(dock.bikes).to include(bike)
    end
  end

  describe "#release" do
    it "raises exception to release if dock is empty" do
      expect { dock.release_bike }.to raise_error "No bikes available"
    end
    it "when there is a bike available" do
      dock.dock(bike)
      expect(dock.release_bike).to eq(bike)
    end
  end
  describe "#capacity" do
    it "returns its own capacity" do
      expect(dock.capacity).to eq(1)
    end
  end
end
