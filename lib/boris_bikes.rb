class DockingStation
    attr_reader :docked_bikes

    def initialize(bikes = [])
      @docked_bikes = bikes
    end  

    def release_bike
        if @docked_bikes.size == 0 
            fail("There are no bikes to take out")
        else
            @docked_bikes.pop
        end
    end

    def dock_bike(bike)
        if @docked_bikes.size == 1 
            raise "Dock is full" 
        else     
            @docked_bikes << bike
        end
    end
end

class Bike
    def working?
        true
    end
end