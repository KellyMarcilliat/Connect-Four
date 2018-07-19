#runner file 


game = ConnectFour.new
puts "Hello, player!  What's your name? >__"
player = gets.chomp
game.add_name(player) 

# game = ConnectFour.new
  # would really like to play "Ballroom Blitz" by Sweet throughout the game!

#Move sequence for player X
  # puts "Please choose a column by typing "A, B, C, D, E, F, or G.  Remember, your piece will be placed immediately on top of all existing pieces in that column."
  # x_column = gets.chomp[0].upcase
  # piece = Piece.new("X",x_column)
  # board.add_piece(piece_object) 
  # call methods to update cell
    # board.add_piece(piece_object)
    # board.find_cell(piece_object)
    
# check for win will need to happen after every new piece is placed
  # board.join_cell_values_by_row(board.cells) 
  # board.evaluate_for_hv_win
  
  # board.join_cell_values_by_row(board.cells.transpose)
  # run method evaluate_for_hv_win
  
  # create strings for diagonal values 
  # run method evaluate_for_diagonal_win
  