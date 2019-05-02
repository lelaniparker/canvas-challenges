require_relative './classes/dog'


puts "Would you like to add a dog to the dog walker service? Enter a name, or (q)uit to exit."
name = gets.strip.capitalize
if (name == "Q" or name.downcase == "quit")
    puts "Ok! Goodbye."
    return
end

puts "How old is your dog?"
age = gets.to_i
puts "Where does your dog live?"
location = gets.strip.capitalize

doggo = Dog.new(name,age,location)
puts doggo
doggo.speak

puts "Has your dog already been for walks today? Type (n)o if not, or the number of walks."
walks = gets.strip
if (walks.downcase == "n" or walks.downcase == "no")
    puts "Ok! We'll take him for a walk"
    puts "Where will you walk?"
    walk_location = gets.strip.capitalize
    puts "How far will you walk?"
    distance = gets.to_i
    doggo.walk(walk_location, distance)
else
    walks.to_i.times do
        doggo.walk("Roma Street Parklands", 2)
    end
end

doggo.display_walks
