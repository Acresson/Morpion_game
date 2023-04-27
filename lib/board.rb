require 'pry'

class Board
attr_accessor :boardcase
attr_accessor :count_turn

  def initialize
    @boardcase = []
      @boardcase << BoardCase.new("A1"," ")
      @boardcase << BoardCase.new("A2"," ")
      @boardcase << BoardCase.new("A3"," ")
      @boardcase << BoardCase.new("B1"," ")
      @boardcase << BoardCase.new("B2"," ")
      @boardcase << BoardCase.new("B3"," ")
      @boardcase << BoardCase.new("C1"," ")
      @boardcase << BoardCase.new("C2"," ")
      @boardcase << BoardCase.new("C3"," ")
    @count_turn = 0
  end

    def play_turn(prout)
      
      check = 0
      while check ==0 
        puts "#{prout.player_name} Quelle case souhaite tu jouer?"
        play_case = gets.chomp
        @boardcase.each do |x| 
          if x.case_id == play_case && x.used == 0
            x.value = prout.value_play
            x.used = 1
            check +=1
          end
        end
        if check == 0
        puts "Mauvaise entrée"
        end
      end
      @count_turn += 1
    end

    def victory(prout)
      winning_combinations = [[@boardcase[0].value, @boardcase[1].value, @boardcase[2].value], [@boardcase[3].value, @boardcase[4].value, @boardcase[5].value], [@boardcase[6].value, @boardcase[7].value, @boardcase[8].value], [@boardcase[0].value, @boardcase[3].value, @boardcase[6].value], [@boardcase[1].value, @boardcase[4].value, @boardcase[7].value], [@boardcase[2].value, @boardcase[5].value, @boardcase[8].value],[@boardcase[0].value, @boardcase[4].value, @boardcase[8].value], [@boardcase[2].value, @boardcase[4].value, @boardcase[6].value]]
      if winning_combinations[0]== ["X","X","X"] || winning_combinations[1]== ["X","X","X"] || winning_combinations[2]== ["X","X","X"] || winning_combinations[3]== ["X","X","X"] ||winning_combinations[4]== ["X","X","X"] || winning_combinations[5]== ["X","X","X"] || winning_combinations[6]== ["X","X","X"] || winning_combinations[7]== ["X","X","X"] 
        puts "La partie est terminée ! X a gagné"
        return true
      elsif winning_combinations[0]== ["O","O","O"] || winning_combinations[1]== ["O","O","O"] ||winning_combinations[2]== ["O","O","O"] ||winning_combinations[3]== ["O","O","O"] ||winning_combinations[4]== ["O","O","O"] ||winning_combinations[5]== ["O","O","O"] ||winning_combinations[6]== ["O","O","O"] ||winning_combinations[7]== ["O","O","O"] 
        puts "La partie est terminée ! O a gagné"
        return true
      elsif @count_turn == 9 
        puts "La partie est terminée. Il y match nul !"
        return true
      else 
        return false
      end
    end

    

end


