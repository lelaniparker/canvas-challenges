class Dog
    attr_reader :location
    def initialize(name, age, location)
        @name = name
        @age = age
        @location = location
        @walks = 0
    end

    def speak
        puts "#{@name} says woof!"
    end

    def number_walks
        @walks += 1
        return self
    end

    def display_walks
        puts "I have been for #{@walks} walks today."
    end

    def to_s
        return "#{@name} is #{@age} years old and lives in #{@location}"    #testing
    end
end


