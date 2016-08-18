# cat = [ ["X", "X", "O"],
#          ["O", "X", "O"],
#          ["O", "O", "X"] ]
#
#
# # Last element of the second row
# cat[1][2] => "O"

=begin
The first activity will be to create a method that simply print the representation of a chessboard
(Tower-B, Horse-B, Bishop-B, King B, Rey-B and Peon-B).
=end

# chess = [["Torre-B", "Caballo-B", "Alfil-B", "Rey-B", "Reyna-B", "Alfil-B", "Caballo-B", "Torre-B"],
#            ["Peon-B", "Peon-B", "Peon-B", "Peon-B", "Peon-B", "Peon-B", "Peon-B", "Peon-B"],
#            [nil, nil, nil, nil, nil, nil, nil, nil],
#            [nil, nil, nil, nil, nil, nil, nil, nil],
#            [nil, nil, nil, nil, nil, nil, nil, nil],
#            [nil, nil, nil, nil, nil, nil, nil, nil],
#            ["Torre-N", "Caballo-N", "Alfil-N", "Rey-N", "Reyna-N", "Alfil-N", "Caballo-N", "Torre-N"],
#            ["Peon-N", "Peon-N", "Peon-N", "Peon-N", "Peon-N", "Peon-N", "Peon-N", "Peon-N"]
# ]
#
# p chess

puts 'Chess'
puts

def chess
  board = Array.new(8, [])
  empty_line = Array.new(8, '  ')
  pawn = Array.new(8, 'P')
  pieces = %w(R K B K Q B K R)
  white = '-W '
  black = '-B '
  line_0 = []
  line_1 = []
  line_6 = []
  line_7 = []


  board.each_with_index do |item, index|
    case index
      when 0
        pieces.each do |piece|
          line_0 << piece + black
          board[index] = line_0
        end
      when 1
        pawn.each do |piece|
          line_1 << piece + black
          board[index] = line_1
        end
      when (2..5)
        board[index] = empty_line
      when 6
        pawn.each do |piece|
          line_6 << piece + white
          board[index] = line_6
        end
      when 7
        pieces.each do |piece|
          line_7 << piece + white
          board[index] = line_7
        end
    end
  end
  puts board.map { |x| x.join }
end

chess

puts
puts 'Data table'
puts

table =
    [%w(Name Age Gender Group Qualifications),
     ['Rodrigo García', 13, 'Male', 'First', [9, 9, 7, 6, 8] ] ,
     ['Fernanda Gonzalez', 12, 'Female', 'Third', [6, 9, 8, 6, 8] ] ,
     ['Luis Perez', 13, 'Male', 'First', [8, 7, 7, 9, 8] ] ,
     ['Ana Espinosa', 14, 'Female', 'Second', [9, 9, 6, 8, 8] ] ,
     ['Pablo Moran', 11, 'Male', 'Second', [7, 8, 9, 9, 8] ] ]


puts "| Name             | Age  | Gender  | Group | Qualifications |"
puts "+------------------+------+---------+-------+----------------+"
puts "|#{table[1][0]}\t   |#{table[1][1]}\t  |#{table[1][2]}\t    |#{table[1][3]}  |#{table[1][4]} |"
puts "|#{table[2][0]} |#{table[2][1]}\t  |#{table[2][2]}   |#{table[2][3]}  |#{table[2][4]} |"
puts "|#{table[3][0]}\t   |#{table[3][1]}\t  |#{table[3][2]}\t    |#{table[3][3]}  |#{table[3][4]} |"
puts "|#{table[4][0]}\t   |#{table[4][1]}\t  |#{table[4][2]}   |#{table[4][3]} |#{table[4][4]} |"
puts "|#{table[5][0]}\t   |#{table[5][1]}\t  |#{table[5][2]}\t    |#{table[5][3]} |#{table[5][4]} |"

puts
puts 'Tests'

p table[0][4]  == "Qualifications"
p table[2][1]  == 12
p table[2][2]  == "Female"
p table[3][3]  == "First"
p table[3][4]  == [8, 7, 7, 9, 8]
p table[4][4][2]  == 6
