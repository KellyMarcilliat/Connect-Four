require './lib/board'


#produces a 42 character string of values
#loop .slice!(0..6) to evaluate by row 
def join_cell_values_by_row
  @cells.map do |array|
    array.map do |cell|
      cell.value
    end 
  end.join 
end 

# board = Board.new 
# @cells = board.cells 
# @values_string = join_cell_values_by_row
# until @values_string.length == 0 do 
#   p @values_string.slice!(0..6)
# end 


@array = ["O", "X", "X", "X", "X", "O", "O"]

def find_horizontal_win
  string = @array.join
  if string.include?("OOOO")
    "COMPUTER WINS!"
  elsif string.include?("XXXX")
    "YOU WIN!"
  end 
end 

def find_vertical_win  
  string = @array.join
  find_horizontal_win
end 

p find_horizontal_win
# p board = Board.new 