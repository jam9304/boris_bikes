class DockingStation
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