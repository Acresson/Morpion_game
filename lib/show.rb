require 'pry'

class Show
  def show_board(instance_de_board)
    @boardcase = instance_de_board.boardcase
    puts "   1        2       3       " 
    puts "       |       |      "
    puts "A  #{@boardcase[0].value}   |   #{@boardcase[1].value}   |   #{@boardcase[2].value}"
    puts "  _____|_______|______"
    puts "       |       |      "
    puts "B  #{@boardcase[3].value}   |  #{@boardcase[4].value}    |   #{@boardcase[5].value}"
    puts "  _____|_______|______"
    puts "       |       |      "
    puts "C  #{@boardcase[6].value}   |   #{@boardcase[7].value}   |   #{@boardcase[8].value}"
    puts "       |       |       "
  end
end



    
    