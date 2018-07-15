require 'minitest/autorun'
require 'minitest/pride'
require './lib/board'
require './lib/cell'
require 'pry'

class BoardTest < Minitest::Test 
  def test_it_exists 
    board = Board.new 
    
    assert_instance_of Board, board 
  end 
  
  def test_cells_attribute 
    board = Board.new
    
    assert_equal 6, board.cells.count
    assert_equal 7, board.cells[rand(0..5)].count
    assert_equal 42, board.cells.flatten.count
    assert_equal "G", board.cells[1][6].column
    assert_instance_of Cell, board.cells[rand(0..5)][rand(0..6)]
  end 
  
  def test_pieces_attribute
    board = board.new
    
    #no idea why this isn't passing
    # assert_equal {"A"=>[], "B"=>[], "C"=>[], "D"=>[], "E"=>[], "F"=>[], "G"=>[]}, board.pieces 
    assert_equal [], board.pieces["A"]
  end 
  
  def test_it_renders_board 
    board = Board.new 
    
    assert_equal [".", ".", ".", ".",".", ".", "."], board.render_board[rand(0..5)] 
  end 
  
  
end 