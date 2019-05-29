require_relative "../models/gumball_machine_model"
require_relative "../views/gumball_machine_view"

class GumballMachineController

    def initialize
      @gumballMachineModel = GumballMachineModel.new
      @gumballMachineView = GumballMachineView.new
    end
  
    def run
      @gumballMachineView.greeting
      choice = @gumballMachineView.menu 
      
      while choice != "X"
        if choice == "G"
          gumball = @gumballMachineModel.dispense
          if gumball.nil?
            @gumballMachineView.machineEmpty
          else
            @gumballMachineView.getGumball
          end
        end
        if choice == "R"
            refill_count = @gumballMachineView.refillCount
            if refill_count > 0
                numGumballs = @gumballMachineModel.refill(refill_count)
                @gumballMachineView.refill(numGumballs)
            else
                @gumballMachineView.invalidRefill(refill_count)
            end               
        end
        choice = @gumballMachineView.menu
      end
      @gumballMachineView.exit
    end
  end