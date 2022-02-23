class DockingStation
    attr_reader :docked_bikes

    def initialize(bikes = [])
      @docked_bikes = bikes
    end  

    def release_bike
        if @docked_bikes.empty? 
            fail("There are no bikes to take out")
        else
            @docked_bikes.pop
        end
    end

    def dock_bike(bike)
        @docked_bikes << bike
    end
end

class Bike
    def working?
        true
    end
end