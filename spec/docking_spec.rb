require './lib/boris_bikes'

describe DockingStation do
  
  it 'respond to metrehod release bike' do
    expect(subject).to respond_to('release_bike')
  end
  
  it 'get bike if dock is empty?' do
    expect{subject.release_bike}.to raise_error("There are no bikes to take out")
  end
  
  it 'dock bike if dock is full?' do
    DockingStation::DEFAULT_CAPACITY.times { subject.dock_bike(Bike.new) }
    expect{subject.dock_bike(Bike.new)}.to raise_error("Dock is full")
  end
  
  it 'is the bike working?' do
    bike = Bike.new
    subject.dock_bike(bike)
    expect(subject.release_bike.working?).to eq true
  end
  
  it 'Can I dock the bike?' do
    bike = Bike.new
    expect(subject).to respond_to("dock_bike")
  end
  
  it 'are there bikes there?' do
    bike_1 = Bike.new
    subject.dock_bike(bike_1)
    expect(subject.docked_bikes).to eq [bike_1]
  end
  
  it 'test the capacity' do
    expect(subject.capacity).to eq 20
  end
  
end
