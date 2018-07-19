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
    @player_name = name.capitalize 
  end 
  
  def x_move(x_column)
    piece = Piece.new("X", x_column)
    board.add_piece(piece)
    board.update_cell(piece)
    board.render_board
    board.print_board  
  end
  
  def o_column
    o_array = ["A", "B", "C", "D", "E", "F", "G"]
    o_random = o_array[rand(0..6)]
    if board.pieces[o_random].count < 6
      o_column = o_random
      return o_column
    else 
      return nil 
    end 
  end
  
  def o_move
    piece = Piece.new("X", o_column)
    board.add_piece(piece)
    board.update_cell(piece)
    board.render_board
    board.print_board  
  end
end 

game = Game.new 
p game.add_name("kelly")
game.x_move("A")
game.x_move("A")
game.x_move("A")
game.x_move("A")

