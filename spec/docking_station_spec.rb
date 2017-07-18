require 'docking_station'

describe DockingStation do
  subject(:dock) { described_class.new }

  describe "#release" do
    it "raises exception to release if dock is empty" do
      expect { dock.release_bike }.to raise_error "No bikes available"
    end
  end
end
