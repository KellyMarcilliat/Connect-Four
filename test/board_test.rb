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
  
  
end 