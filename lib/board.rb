require './lib/cell'

class Board 
  
  attr_reader     :cells,
                  :pieces 
  
  def initialize
    @cells = [
      [Cell.new("A", 6), Cell.new("B", 6), Cell.new("C", 6), Cell.new("D", 6), Cell.new("E", 6), Cell.new("F", 6), Cell.new("G", 6)],
      [Cell.new("A", 5), Cell.new("B", 5), Cell.new("C", 5), Cell.new("D", 5), Cell.new("E", 5), Cell.new("F", 5), Cell.new("G", 5)],
      [Cell.new("A", 4), Cell.new("B", 4), Cell.new("C", 4), Cell.new("D", 4), Cell.new("E", 4), Cell.new("F", 4), Cell.new("G", 4)],
      [Cell.new("A", 3), Cell.new("B", 3), Cell.new("C", 3), Cell.new("D", 3), Cell.new("E", 3), Cell.new("F", 3), Cell.new("G", 3)],
      [Cell.new("A", 2), Cell.new("B", 2), Cell.new("C", 2), Cell.new("D", 2), Cell.new("E", 2), Cell.new("F", 2), Cell.new("G", 2)],
      [Cell.new("A", 1), Cell.new("B", 1), Cell.new("C", 1), Cell.new("D", 1), Cell.new("E", 1), Cell.new("F", 1), Cell.new("G", 1)]
    ]
    @pieces = {"A"=>[],"B"=>[],"C"=>[],"D"=>[],"E"=>[],"F"=>[],"G"=>[]}
    @diagonals = [
      [cells[2][0].value, cells[3][1].value, cells[4][2].value, cells[5][3].value],
      [cells[1][0].value, cells[2][1].value, cells[3][2].value, cells[4][3].value, cells[5][4].value], 
      [cells[0][0].value, cells[1][1].value, cells[2][2].value, cells[3][3].value, cells[4][4].value, cells[5][5].value], 
      [cells[0][1].value, cells[1][2].value, cells[2][3].value, cells[3][4].value, cells[4][5].value, cells[5][6].value],
      [cells[0][2].value, cells[1][3].value, cells[2][4].value, cells[3][5].value, cells[4][6].value],
      [cells[0][3].value, cells[1][4].value, cells[2][5].value, cells[3][6].value],
      [cells[3][0].value, cells[2][1].value, cells[1][2].value, cells[0][3].value],
      [cells[4][0].value, cells[3][1].value, cells[2][2].value, cells[1][3].value, cells[0][4].value],
      [cells[5][0].value, cells[4][1].value, cells[3][2].value, cells[2][3].value, cells[1][4].value, cells[0][5].value],
      [cells[5][1].value, cells[4][2].value, cells[3][3].value, cells[2][4].value, cells[1][5].value, cells[0][6].value],
      [cells[5][2].value, cells[4][3].value, cells[3][4].value, cells[2][5].value, cells[1][6].value],
      [cells[5][3].value, cells[4][4].value, cells[3][5].value, cells[2][6].value]
    ]
  end 
  
  #add_piece method with piece object argument 
  def add_piece(piece_object)
    @pieces[piece_object.column] << piece_object
  end 
  
  # calculates negative integer for use as index in @cells 
  # helper to find_cell method
  def find_cells_array(piece_object)
    guesses_in_column = (pieces[piece_object.column].count)
    if guesses_in_column > 0
      guesses_in_column *= -1
    else 
      5
    end 
  end 
  
  # helper for update_cell method
  def find_cell(piece_object)
    @cells[find_cells_array(piece_object)].find do |element|
      element.column == piece_object.column
    end 
  end 
  
  def update_cell(piece_object)
    find_cell(piece_object).value = piece_object.player
  end 
  
  def join_cell_values_by_row
    @cells.map do |array|
      array.map do |cell|
        cell.value
      end 
    end.join 
  end 
  
  def evaluate_for_win(cell_value_string)
    until cell_value_string.length == 0 do 
      slice = cell_value_string.slice!(0..6)
      if find_win_in_string(slice) != nil 
        return find_win_in_string(slice)
      end 
    end
  end 
    
  
  def find_win_in_string(sliced_string)
    if sliced_string.include?("OOOO")
      "COMPUTER WINS!"
    elsif sliced_string.include?("XXXX")
      "YOU WIN!"
    end 
  end 
  
  def render_board
    @cells.map do |array|
      array.map do |cell|
        cell.value
      end 
    end 
  end 
  
  def print_board
    render_board
    puts "ABCDEFG"
    puts "#{render_board[0].join}"
    puts "#{render_board[1].join}"
    puts "#{render_board[2].join}"
    puts "#{render_board[3].join}"
    puts "#{render_board[4].join}"
    puts "#{render_board[5].join}"
  end 
end 