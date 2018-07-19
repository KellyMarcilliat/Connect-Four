#runner file 
require './lib/board'
require './lib/piece'
require './lib/game'

game = Game.new
# binding.pry 
win = 0
puts "Hello, player!  What's your name? >__"
player = gets.chomp
game.add_name(player) 

puts "The purpose of the game is to achieve 4 consecutive pieces.  They can connect horizontally, vertically, or diagonally.  You will take turns with the computer with each of you placing one piece at a time.  The first to achieve 4 connected pieces wins."

puts "Okay, #{game.player_name}, let's begin.  You get to go first."
# delay one second

while win == 0 do 
  puts "Please choose a column by typing A, B, C, D, E, F, or G.  Your piece will be placed immediately on top of all existing pieces in that column."

  x_column = gets.chomp[0].upcase
  game.x_move(x_column)
# delay one second 

  cell_value_string = game.board.join_cell_values_by_row(game.board.cells)
  if game.board.evaluate_for_hv_win(cell_value_string) == "YOU WIN!"
    puts game.board.evaluate_for_hv_win(cell_value_string)
    win += 1
  end
  # binding.pry 
  cell_value_string_transposed = game.board.join_cell_values_by_row(game.board.cells)
  if game.board.evaluate_for_hv_win(cell_value_string_transposed) == "YOU WIN!" 
    puts game.board.evaluate_for_hv_win(cell_value_string_transposed)
    win += 1
  end 
  
  if game.board.evaluate_for_diagonal_win(game.board.diagonals) == "YOU WIN!" 
    puts evaluate_for_diagonal_win(game.board.diagonals)
    win += 1
  end 
  
  puts "Nicely done!  Now, the computer will place a piece."
  #delay one second
  o_choice = game.o_column 
  game.o_move(o_choice)
  
  cell_value_string = game.board.join_cell_values_by_row(game.board.cells)
  if game.board.evaluate_for_hv_win(cell_value_string) == "YOU WIN!"
    puts game.board.evaluate_for_hv_win(cell_value_string)
    win += 1
  end
  
  cell_value_string_transposed = game.board.join_cell_values_by_row(game.board.cells)
  if game.board.evaluate_for_hv_win(cell_value_string_transposed) == "YOU WIN!" 
    puts game.board.evaluate_for_hv_win(cell_value_string_transposed)
    win += 1
  end 
  
  if game.board.evaluate_for_diagonal_win(game.board.diagonals) == "YOU WIN!" 
    puts evaluate_for_diagonal_win(game.board.diagonals)
    win += 1
  end
end  
   
    # 
  
# on move sequence for "O", if o_column returns nil, o_column again
  