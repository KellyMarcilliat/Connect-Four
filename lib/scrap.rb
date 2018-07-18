require './lib/board'
require 'pry'

board_2D =  [[50, 51, 52, 53, 54, 55, 56], 
             [40, 41, 42, 43, 44, 45, 46],
             [30, 31, 32, 33, 34, 35, 36],
             [20, 21, 22, 23, 24, 25, 26],
             [10, 11, 12, 13, 14, 15, 16],
             [00, 01, 02, 03, 04, 05, 06]] 

values = [] #array to shove them into 
board = Board.new
cells = board.cells 
diagonals = [
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
p diagonals[1].join

# row = 0
# column = 0
#   board_2D.map do |array|
#     array.map do |cell| 
#       if board_2D[row] != nil && board_2D[row][column] != nil
#         # binding.pry   
#         values << board_2D[row][column] #61
#         column += 1
#         row += 1
#       end 
#     end 
#   end 


# board_2D.each do |array|
#   array.each do |cell|
#     row = 0
#     column = 0
#     until board_2D[column] == nil || board_2D[row] == nil
#      values << board_2D[row][column] #61
#      row += 1
#      column += 1
#    end 
#   end 
# end 
# p values 