class Cell 
  
  attr_reader     :column,
                  :row
  attr_accessor   :value
  def initialize(column, row, value = ".")
    @column = column
    @row = row
    @value = value 
  end 
end 