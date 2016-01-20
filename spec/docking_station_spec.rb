require 'docking_station'

describe DockingStation do

  subject(:DockingStation) {described_class.new}

  it {should respond_to(:release_bike)}

  it "gets a Bike and expects the bike to be working" do
    bike = Bike.new
    expect(bike.working?).to be true
  end

  it {should respond_to(:dock)}

  it "returns docked bikes" do
    bikes = Bike.new
    subject.dock(bikes)
    expect(subject.bikes[0]).to eq bikes
  end

  describe '#release_bike' do
    it "raises an error when there are not bikes available" do
      expect { subject.release_bike }.to raise_error "No bikes available"
    end
  end

  describe '#dock' do
    it "raises an error when the dock is full" do
      20.times { subject.dock Bike.new }
      expect { subject.dock Bike.new }.to raise_error "No space available"
    end
  end

  end
