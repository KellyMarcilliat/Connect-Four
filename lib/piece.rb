class Piece
  
  attr_reader     :name,
                  :column,
                  :move
                  
  def initialize(name, column, move)
    @name = name
    @column = column
    @move = move 
  end 
end 