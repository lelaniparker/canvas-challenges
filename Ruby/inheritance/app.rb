require_relative './classes/vehicle'
require_relative './classes/car'
require_relative './classes/motorbike'

civic = Vehicle.new("Honda", "Civic")
puts civic

low_rider = Motorbike.new("Harley Davidson", "Low Rider")
puts low_rider

civic = Car.new("Honda", "Civic")
puts civic

civic.refuel(25)
low_rider.refuel(15)

civic.fuel_level
low_rider.fuel_level

civic.wind_up_windows
low_rider.wheelie