class Flight
    attr_reader :passengers
    def initialize (str, capacity)
        @flight_number = str
        @capacity = capacity
        @passengers = []
    end

    def full?
        if @passengers.length >= @capacity
            return true
        end
        return false
    end

    def board_passenger(passenger)    
        if !full?
            if passenger.has_flight?(@flight_number)
                @passengers << passenger
            end
        end
    end

    def list_passengers
        return @passengers.map {|passenger| passenger.name}
    end

    def [](num)
        @passengers[num]
    end

    def <<(passenger)
        board_passenger(passenger)
    end
end