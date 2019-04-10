class Vehicle
    def initialize(model, make)
    @model = model
    @make = make
    @fuel = 0
    end

    def to_s
    return "Make: #{@make}, Model: #{@model}"
    end

    def refuel(litres)
        @fuel += litres
        return self
    end

    def fuel_level
        puts "#{@fuel}l"
    end
end
