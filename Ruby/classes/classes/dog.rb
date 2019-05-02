require_relative "walk"

class Dog
    attr_reader :location
    def initialize(name, age, location)
        @name = name
        @age = age
        @location = location
        @walks = []
    end

    def walk(location, distance)
        @walks.push(Walk.new(location,distance))
        return self
    end

    def total_distance
        total = 0
        @walks.each do |walk|
            total += walk.distance
        end
        return total
    end

    def display_walks
        puts "#{@name} has been for #{@walks.length} walks today:"
        puts @walks
        puts "#{@name} has walked #{total_distance} km today!"
    end

    def speak
        puts "#{@name} says woof!"
    end

    def to_s
        return "#{@name} is #{@age} years old and lives in #{@location}"
    end
end