require './lib/board'
require './lib/piece'
require 'pry'

class Game 
  
  attr_reader     :board
  attr_accessor   :player_name 
  
  def initialize 
    @board = Board.new 
    @player_name = nil 
    @time_elapsed = 0
  end 
  
  def add_name(name)
    @player_name = name
  end 
  
  def x_move
  end 
  
end 