# Create Password
puts "Please create your password:"
passwordStored = gets.chomp.to_i

# Customers balance
balance = 0

# Welcome Message
puts "Welcome to the banking app"

# Ask for customers password
puts "Enter your password"
password = gets.chomp.to_i

while (password != passwordStored)
    puts "Incorrect password, please re-enter your password"
    puts "Enter your password"
    password = gets.chomp.to_i
end

history_list = []
# Ask for customer to select option
loop do puts "What would you like to do? (options: balance or deposit or withdraw or exit or history)"
        option = gets.strip
    if (option == "balance")                        # Balance Option
        puts "Your balance is $#{balance}"
        history_list << "Current Balance: $#{balance}"
    elsif (option == "deposit")                     # Deposit Option
        puts "How much would you like to deposit?"
        deposit = gets.to_i
        balance = balance + deposit
        puts "Your new balance is $#{balance}"
        history_list << "Deposited: $#{deposit}"
    elsif (option == "withdraw")                    # Withdraw Option
        puts "How much would you like to withdraw?"
        withdraw = gets.to_i
        if withdraw > balance
            puts "You have insufficient funds"
        else
            balance = balance - withdraw
        puts "Your new balance is $#{balance}"
        end
        history_list << "Withdrew: $#{withdraw}"
    elsif (option == "exit")                        # Exit Option
        puts "Thank you for using our Banking App"
        abort
    elsif (option == "history")                     # History Option
        puts "History: Here's a list of your most recent transactions: #{history_list}" 
        
    else
        puts "Invalid Selection!"                   # Invalid Selection Message
    end
end



