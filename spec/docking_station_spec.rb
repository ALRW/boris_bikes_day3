require "docking_station"
require "bike"

describe DockingStation do
    it {is_expected.to respond_to :release_bike}

    it "releases a bike" do
      bike = subject.release_bike
      expect(bike).to be_working
    end

    it {is_expected.to respond_to(:dock).with(1).argument}

    it {is_expected.to respond_to(:bike)}

    it "shows docked bike"  do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike).to eq(bike)
    end

end