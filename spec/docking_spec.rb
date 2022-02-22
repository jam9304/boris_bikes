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
    expect(subject.dock_bike(bike)).to eq true
  end
end
