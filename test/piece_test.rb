require 'minitest/autorun'
require 'minitest/pride'
require './lib/piece'
require 'pry'

class PieceTest < Minitest::Test 
  def test_it_exists 
    piece = Piece.new("X", "A", 1)
    
    assert_instance_of Piece, piece 
  end 
  
  def test_attributes
    piece = Piece.new("X", "A", 1)
    
    assert_equal "X", piece.name
    assert_equal "A", piece.column
    assert_equal 1, piece.move 
  end 
end 