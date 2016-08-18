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



=begin
Data table
=end

# | Name             | Age  | Gender  | Group | Qualifications |
# +------------------+------+----------+--------+----------------+
# |Rodrigo García    | 13   |Male   |First    |[9, 9, 7, 6, 8] |
# |Fernanda Gonzalez | 12   |Female |Third    |[6, 9, 8, 6, 8] |
# |Luis Perez        | 13   |Male   |First    |[8, 7, 7, 9, 8] |
# |Ana Espinosa      | 14   |Female |Second   |[9, 9, 6, 8, 8] |
# |Pablo Moran       | 11   |Male   |Second   |[7, 8, 9, 9, 8] |
#
# p table[0][4]  == "Qualifications"
# p table[2][1]  == 12
# p table[2][2]  == "Female"
# p table[3][3]  == "First"
# p table[3][4]  == [8, 7, 7, 9, 8]
# p table[4][4][2]  == 6