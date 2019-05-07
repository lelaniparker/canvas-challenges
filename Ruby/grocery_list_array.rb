# Initialise array
grocery_list = []

# Loop
3.times do
puts "What item do you want to add to your grocery list?"
grocery_item = gets.downcase.chomp
grocery_list << grocery_item
end

# Replace Ice Cream with Broccoli
grocery_list = grocery_list.map do |item|
    if item == "ice cream"
        "broccoli"
    else
        item
    end
end 

# Length of grocery list
grocery_list_length = grocery_list.length
puts "You have  #{grocery_list_length} items in your grocery list"

# Sort grocery List
grocery_list_sorted = grocery_list.sort!
puts "Here\'s your sorted grocery list: #{grocery_list_sorted}"