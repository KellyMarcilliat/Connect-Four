require 'minitest/autorun'
require 'minitest/pride'
require './lib/cell'
require 'pry'

class CellTest < Minitest::Test 
  def test_it_exists
    cell = Cell.new("B", 1)
    
    assert_instance_of Cell, cell 
  end 
  
  def test_attributes
    cell = Cell.new("B", 1)
    
    assert_equal "B", cell.column
    assert_equal 1, cell.row
    assert_equal ".", cell.value
    
    cell = Cell.new("G", 5, "X")
    
    assert_equal "G", cell.column
    assert_equal 5, cell.row
    assert_equal "X", cell.value  
    end
end 