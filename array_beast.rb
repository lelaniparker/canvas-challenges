# Initialise array
grocery_list = []

# Loop
3.times do
puts "What item do you want to add to your grocery list?"
grocery_item = gets.chomp
grocery_list << grocery_item
end

# Replace Ice Cream with Broccoli
# ice_cream = gets.downcase
# grocery_list[ice_cream] = "Broccoli"

# Sort grocery List
grocery_list_sorted = grocery_list.sort!
puts "Here\'s your sorted grocery list: #{grocery_list}"

# Length of grocery list
grocery_list_length = grocery_list.length
puts "You have  #{grocery_list_length} items in your grocery list"



