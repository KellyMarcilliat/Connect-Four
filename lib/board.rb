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
  end 
  
  #add_piece method with piece object argument 
  def add_piece(piece_object)
    @pieces[piece_object.column] << piece_object
  end 
  
  def find_cells_array(piece_object)
    -(pieces[piece_object.column].count)
  end 
  
  # call method to update cell
  # def update_cell(piece_object)
    # row to update: -(board.pieces[piece_2.column].count) = -2
  #   @cells
    #= piece_object.player
    #piece column
    #calculated row
  
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