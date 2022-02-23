class DockingStation
    attr_reader :docked_bikes
    
    def initialize(bikes = [])
      @docked_bikes = bikes
    end  
    def release_bike
        bike = Bike.new
    end
    def dock_bike(bike)
        true
    end
end

class Bike
    def working?
        true
    end
end