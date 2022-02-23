class DockingStation
    DEFAULT_CAPACITY = 20

    attr_reader :docked_bikes
    attr_reader :capacity
    

    def initialize(bikes = [], capacity = DEFAULT_CAPACITY)
      @docked_bikes = bikes
      @capacity = capacity
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
        @docked_bikes.size == @capacity
    end
end

class Bike
    def working?
        true
    end
end