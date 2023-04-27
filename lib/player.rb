require 'pry'

class Player
attr_accessor :player_name
attr_accessor :value_play

  def initialize 
    puts "Comment tu t'appelles?"
    @player_name = gets.chomp
    puts "Préfères tu les X ou les O ?"
    @value_play = gets.chomp
  end

end
