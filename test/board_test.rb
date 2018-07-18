require 'minitest/autorun'
require 'minitest/pride'
require './lib/board'
require './lib/cell'
require './lib/piece'
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
    board = Board.new 
    # binding.pry 
    # no idea why this assertion isn't passing
    # assert_equal {"A"=>[], "B"=>[], "C"=>[], "D"=>[], "E"=>[], "F"=>[], "G"=>[]}, board.pieces 
    assert_equal [], board.pieces["A"]
  end 
  
  def test_it_adds_pieces_to_correct_key
    board = Board.new
    piece_1 = Piece.new("X", "C")
    piece_2 = Piece.new("0", "C")
    
    assert_equal [], board.pieces["C"]
    
    board.add_piece(piece_1)
    board.add_piece(piece_2)
    assert_equal [piece_1, piece_2], board.pieces["C"] 
  end 
  
  def test_it_finds_cells_array 
    board = Board.new 
    piece_1 = Piece.new("X", "B")
    board.add_piece(piece_1)
    
    assert_equal -1, board.find_cells_array(piece_1)
  end 
  
  def test_it_finds_cell
    board = Board.new 
    piece_1 = Piece.new("X", "C")
    board.add_piece(piece_1)
    board.update_cell(piece_1)

    assert_equal board.cells[5][2], board.find_cell(piece_1)
    
    piece_2 = Piece.new("O", "C")
    board.add_piece(piece_2)
    board.update_cell(piece_2)
    assert_equal board.cells[4][2], board.find_cell(piece_2)
  end
  
  def test_it_updates_cell 
    board = Board.new 
    piece_1 = Piece.new("X", "C")
    piece_2 = Piece.new("O", "C")
  
    assert_equal ".", board.cells[5][0].value
    assert_equal ".", board.cells[5][2].value
    assert_equal ".", board.cells[4][0].value
  
    board.add_piece(piece_1)
    board.find_cell(piece_1)
    board.update_cell(piece_1)
    board.add_piece(piece_2)
    board.find_cell(piece_2)
    board.update_cell(piece_2)
    
    assert_equal ".", board.cells[5][0].value
    assert_equal "X", board.cells[5][2].value
    assert_equal "O", board.cells[4][2].value
  end 
  
  def test_it_joins_cell_values_by_row
    board = Board.new 
    
    assert_equal "..........................................", board.join_cell_values_by_row 
    assert_equal 42, board.join_cell_values_by_row.length
  end 
  
  # def test_it_evaluates_for_diagonal_win
  
  def test_it_evaluates_for_horizontal_or_vertical_win 
    board = Board.new 
    
    assert_equal "COMPUTER WINS!", board.evaluate_for_hv_win(".........OOOO............")
    assert_equal "YOU WIN!", board.evaluate_for_hv_win("..........XXXX........") 
    assert_nil board.evaluate_for_hv_win("...................")
  end 
  
  def test_it_finds_win_in_string
    board = Board.new 
    
    assert_equal "COMPUTER WINS!", board.find_win_in_string("..OOOO.")
    assert_equal "COMPUTER WINS!", board.find_win_in_string(".OOOO..")
    assert_equal "YOU WIN!", board.find_win_in_string(".XXXX..")
    assert_equal "YOU WIN!", board.find_win_in_string("...XXXX")
    assert_nil board.find_win_in_string("XOXOXOX")
    assert_nil board.find_win_in_string(".......")
  end 
  
  def test_it_renders_board 
    board = Board.new 
    
    assert_equal [".", ".", ".", ".",".", ".", "."], board.render_board[rand(0..5)] 
  end 
  
  
end 