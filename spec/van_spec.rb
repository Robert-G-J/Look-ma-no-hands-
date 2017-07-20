require 'van'

describe Van do
  subject(:van) { described_class.new }
  let(:bike) { double(:bike, broken: false) }
  let(:broken_bike) { double(:broken_bike, broken: true) }
  let(:dock) { double(:dock, bikes: [broken_bike, bike]) }

  describe "#collect" do
    it "raises error if there are no broken bikes" do
      dock = double(:dock, bikes: [bike])
      expect { van.collect(dock) }.to raise_error "No broken bikes to collect"
    end
    it "a bike is collected" do
      expect { van.collect(dock) }.to change { van.bikes.count }.by(1)
    end
    it "removes bikes from dock" do
      expect { van.collect(dock) }.to change { dock.bikes.count }.by(-1)
    end
  end

  describe "#bikes" do
    it "knows how many bikes it is carrying" do
      expect(van.bikes.count).to eq(0)
    end
  end
end
