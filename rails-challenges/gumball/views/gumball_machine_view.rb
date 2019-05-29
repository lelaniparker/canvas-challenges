class GumballMachineView

    def greeting
      puts "Hi there, welcome to the Gumball Machine. Please select from the menu."
    end
  
    def menu
      choice = nil
      while choice != "G" && choice != "R" && choice != "X"
        puts "Press G to get a gumball, R to refill, or X to exit"
        choice = gets.chomp.upcase
      end
      
      return choice
    end
  
    def getGumball
      puts "Yum, here's your gumball"
    end
  
    def machineEmpty
      puts "Sorry but the Gumball Machine is empty :( Please come back tomorrow"
    end
  
    def refill(count)
      puts "Yay, the Gumball Machine has now been refilled!"
      puts "Thanks for refilling me. There are now #{count} gumballs in the machine "   
    end

    def invalidRefill(count)
        puts "Hey you didn't put in the correct gumballs!"
        puts "#{count} is not correct"
    end

    def refillCount
        puts "How many gumballs do you want to refill?"
            count = gets.to_i
        end
  
    def exit
      "Thank you for using our Gumball Machine. Enjoy your Gumballs!!"
    end
  
  end