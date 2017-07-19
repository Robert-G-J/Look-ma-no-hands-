require 'bike'

describe Bike do
  subject(:bike) { described_class.new }
  describe "#report_broken" do
    it "can be reported broken by a user" do
      bike.report_broken 
      expect(bike.report_broken).to eq(true)
    end
  end
end
