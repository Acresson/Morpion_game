require 'pry'

class Game
  attr_accessor :current_player
  attr_accessor :board
  attr_accessor :status
  attr_accessor :players_array


  def initialize
    @players_array = []
    @board = Board.new
    show = Show.new.show_board(@board)
    puts "Joueur 1 "
    @players_array << Player.new
    puts "Joueur 2"
    @players_array << Player.new
    @status = false
  end

  def turn
    while @status == false
      @current_player = @players_array[0]
      @players_array.each do 
      @board.play_turn(@current_player)
      show = Show.new.show_board(@board)
      @board.victory(@current_player)
      @current_player = @players_array[1]
    if @board.victory(@current_player) == true
      @status = true
      break
    end
    end  
  end
  end    

end