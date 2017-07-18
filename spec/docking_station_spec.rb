require 'docking_station'

describe DockingStation do
  subject(:dock) { described_class.new }
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
  end
end
