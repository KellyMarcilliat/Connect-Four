class Piece
  
  attr_reader     :player,
                  :column,
                  :move
                  
  def initialize(player, column, move)
    @player = player
    @column = column
    @move = move 
  end 
end 