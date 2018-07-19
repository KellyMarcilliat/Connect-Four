require 'minitest/autorun'
require 'minitest/pride'
require './lib/game'
require 'pry'

class GameTest < Minitest::Test 
  def test_it_exists 
    game = Game.new 
    
    assert_instance_of Game, game 
  end 
  
  def test_it_creates_a_board_object
    game = Game.new 
    
    assert_instance_of Board, game.board 
  end
  
  def test_it_can_add_and_capitalize_player_name
    game = Game.new 
    
    assert_nil game.player_name
    
    game.add_name("kelly")
    
    assert_equal "Kelly", game.player_name
  end 
  
  def test_x_move_sequence 
    game = Game.new 
    
    assert_equal ".", game.board.cells[5][0].value
    
    game.x_move("A")
    
    assert_equal "X", game.board.cells[5][0].value
  end 
  
  def test_o_column_returns_nil_on_full_column
    game = Game.new 
    
    assert_equal String, game.o_column.class 
    
    game.x_move("A"); game.x_move("A"); game.x_move("A")
    game.x_move("A"); game.x_move("A"); game.x_move("A")
    game.x_move("B"); game.x_move("B"); game.x_move("B")
    game.x_move("B"); game.x_move("B"); game.x_move("B")
    game.x_move("C"); game.x_move("C"); game.x_move("C")
    game.x_move("C"); game.x_move("C"); game.x_move("C")
    game.x_move("D"); game.x_move("D"); game.x_move("D")
    game.x_move("D"); game.x_move("D"); game.x_move("D")
    game.x_move("E"); game.x_move("E"); game.x_move("E")
    game.x_move("E"); game.x_move("E"); game.x_move("E")
    game.x_move("F"); game.x_move("F"); game.x_move("F")
    game.x_move("F"); game.x_move("F"); game.x_move("F")
    game.x_move("G"); game.x_move("G"); game.x_move("G")
    game.x_move("G"); game.x_move("G"); game.x_move("G")
    
    assert_equal nil, game.o_column 
  end 
end 