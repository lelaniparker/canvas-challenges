# require 'geocoder'


class Walk
    attr_reader :distance
    def initialize(location,distance)
        @location = location
        @time = Time.now.strftime("%D %H:%M %P")
        @distance = distance
        # @latitude
        # @longitude
    end

    def to_s
        return "Location: #{@location}, distance: #{@distance}, time: #{@time}"
    end

end