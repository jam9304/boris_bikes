require './lib/boris_bikes'

describe DockingStation do
 it 'respond to method release bike' do
    expect(subject.release_bike).to eq true  
 end
end
