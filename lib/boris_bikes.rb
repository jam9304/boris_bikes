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
        if full?
            raise "Dock is full" 
        else     
            @docked_bikes << bike
        end
    end

    private
    def full?
        @docked_bikes.size == 20
    end
end

class Bike
    def working?
        true
    end
end