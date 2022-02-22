require './lib/boris_bikes'

describe DockingStation do
 it 'respond to metrehod release bike' do
    expect(subject).to respond_to('release_bike')
 end

 it 'get bike?' do
   expect(subject.release_bike).to be_an_instance_of(Bike)
 end

  it 'is the bike working?' do
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
end
