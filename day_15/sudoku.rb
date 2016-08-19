class Sudoku

	MASTER_ARRAY = [1..9]

	def initialize(board)
		@board = board
	end

	def find_zero

	end

	def search_column

	end

	def search_row

	end

	def search_box

	end

	def board
		k = 0
		(0..9).each do |i|
			(0..9).each do |j|
				print @board[k + j]
			end
			k += 9
			puts
		end

	end

	def solve!

	end
end

game = Sudoku.new('702806519100740230005001070008000002610204053200000100070400800064078005821503907')

game.solve!
puts game.board