require 'docking_station'

describe DockingStation do

  subject(:DockingStation) {described_class.new}

  it {should respond_to(:release_bike)}

  it "gets a Bike and expects the bike to be working" do
    bike = subject.release_bike
    expect(bike).to be_working
  end
end
