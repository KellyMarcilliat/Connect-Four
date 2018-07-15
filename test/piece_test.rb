require 'minitest/autorun'
require 'minitest/pride'
require './lib/piece'
require 'pry'

class PieceTest < Minitest::Test 
  def test_it_exists 
    piece = Piece.new("X", "A")
    
    assert_instance_of Piece, piece 
  end 
  
  def test_attributes
    piece = Piece.new("X", "A")
    
    assert_equal "X", piece.player
    assert_equal "A", piece.column 
  end 
end 