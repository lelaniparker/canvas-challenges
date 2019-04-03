# Customers balance
balance = 0

# Welcome Message
puts "Welcome to the banking app"
puts "Enter your password"
password = gets.to_i

puts "What would you like to do? (options: balance or deposit)"
option = gets.strip

if (option == "balance")
    puts "Your balance is $#{balance}"
elsif (option == "deposit")
    puts "How much would you like to deposit?"
    deposit = gets.to_i
    puts "Your new balance is $#{balance + deposit}"
else
    puts "Invalid Selection!"
end


