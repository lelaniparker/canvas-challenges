items = [{customer: "John", item: "Soup", cost: 8.50}, {customer: "Sarah", item: "Pasta", cost: 12}, {customer: "John", item: "Coke", cost: 2.50}]

#Ask customers name
puts "What's your name?"
customer_name = gets.chomp.capitalize

money_owed = []
#Iterate through hash to find customers name
items.each do |customer_search|
    if customer_name == customer_search[:customer]
        money_owed.push(customer_search[:cost])
    end
end

total_owed = '%.2f' % money_owed.sum

puts "#{customer_name} owes $#{total_owed}"