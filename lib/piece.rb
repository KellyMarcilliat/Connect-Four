class Piece
  
  attr_reader     :player,
                  :column
                  
  def initialize(player, column)
    @player = player
    @column = column
  end 
end 