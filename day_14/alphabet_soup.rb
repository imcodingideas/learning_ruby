class Board
# You should put here the given boards templates
# @@boards_templates =
  def initialize
    complete_board!
  end

  def to_s
    "try to print a board, what does this method do?"
  end

  private

  def complete_board!
    # This method should fill an incomplete board, in other words change the "x" by random letters.
  end
end

board = Board.new
puts board

# Boards words and Templates

[["POEMA", "CANCION", "RONDAS", "RIMAS"],"POEMAXCXXXXAXXSXNXAAXCMXDXIXXNROXXOXNXXR"]
[["MANGO", "SANDIA", "MELON", "PLATANO"],"XXXXPXXXXLXAMXAXIEXTXDLXAXNOXNMANGOXSXXX"]
[["ROJO", "VERDE", "AZUL", "NEGRO"],"OJORXXXXXXXEXXOXDXRXXRGLXXEXUXNVXZXXXXAX"]