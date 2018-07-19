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
    
    assert_equal nil, game.player_name
    
    game.add_name("kelly")
    
    assert_equal "Kelly", game.player_name
  end 
end 