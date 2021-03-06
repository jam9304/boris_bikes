require './lib/boris_bikes'

describe DockingStation do
  
  it 'respond to metrehod release bike' do
    expect(subject).to respond_to('release_bike')
  end
  
  it 'get bike if dock is empty?' do
    expect{subject.release_bike}.to raise_error("There are no bikes to take out")
  end
  
  it 'dock bike if dock is full?' do
    subject.capacity.times { subject.dock_bike(Bike.new) }
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

    it 'test the new capacity' do
      docking_station = DockingStation.new([],25)
        expect(docking_station.capacity).to eq 25
      
    end

    it 'is broken?' do
      bike = Bike.new
      expect(subject.dock_bike({bike => false})).to eq [{bike => false}]
    end
end
