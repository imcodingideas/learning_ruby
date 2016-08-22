class Sudoku

	def initialize(string)
		@string = string
		@array = @string.split('').each_slice(9).to_a
		@box = create_box
	end

	def solve!
		board
		index = 0
		while index < @string.length
			if !is_there_zero?
				board
				return
			else
				index = next_zero_coordinate(index)
				coordinate = calculate_coordinate(index)
				options = options(coordinate)
				if options.length != 1
					index += 1
				else
					@string[index] = options.pop.to_s
					@array[coordinate[0]][coordinate[1]] = @string[index]
					@box = create_box
					index = 0
				end
			end
		end
	end

	def board
		@array[0].join(' ')
		puts '-' * 21
		@array.each_with_index do |line, index|
			x = line.join(' ')
			puts x.slice(0, 6) + '| ' + x.slice(6, 6) + '| ' + x.slice(12, 6)

			puts '-' * 21 if (index + 1) % 3 == 0
		end
		nil
	end

	private
	def is_there_zero?
		@string.include?('0')
	end

	def calculate_coordinate(i)
		row = i / 9
		col = i % 9
		coordinate = [row, col]
	end

	def next_zero_coordinate(i)
		index = @string.index('0', i)
	end

	def create_box
		box_1, box_2, box_3, box_4, box_5, box_6, box_7, box_8, box_9, final_box = [], [], [], [], [], [], [], [], [], []
		box_1 << @string[0..2].split(//) << @string[9..11].split(//) << @string[18..20].split(//)
		box_1.flatten!
		box_2 << @string[3..5].split(//) << @string[12..14].split(//) << @string[21..23].split(//)
		box_2.flatten!
		box_3 << @string[6..8].split(//) << @string[15..17].split(//) << @string[24..26].split(//)
		box_3.flatten!
		box_4 << @string[27..29].split(//) << @string[36..38].split(//) << @string[45..47].split(//)
		box_4.flatten!
		box_5 << @string[30..32].split(//) << @string[39..41].split(//) << @string[48..50].split(//)
		box_5.flatten!
		box_6 << @string[33..35].split(//) << @string[42..44].split(//) << @string[51..53].split(//)
		box_6.flatten!
		box_7 << @string[54..56].split(//) << @string[63..65].split(//) << @string[72..74].split(//)
		box_7.flatten!
		box_8 << @string[57..59].split(//) << @string[66..68].split(//) << @string[75..77].split(//)
		box_8.flatten!
		box_9 << @string[60..62].split(//) << @string[69..71].split(//) << @string[78..80].split(//)
		box_9.flatten!

		final_box << box_1 << box_2 << box_3 << box_4 << box_5 << box_6 << box_7 << box_8 << box_9
	end

	def in_array(array)
		taken_numbers = []
		array.each do |number|
      taken_numbers << number if number != '0'
		end
		taken_numbers
	end

	def in_box(box)
		in_array(@box[box])
	end

	def which_box(coordinate)
		row = coordinate[0]
		col = coordinate[1]
		case row
			when 0..2
				case col
					when 0..2
						box = in_box(0)
					when 3..5
						box = in_box(1)
					else
						box = in_box(2)
				end
			when 3..5
				case col
					when 0..2
						box = in_box(3)
					when 3..5
						box = in_box(4)
					else
						box = in_box(5)
				end
			else
				case col
					when 0..2
						box = in_box(6)
					when 3..5
						box = in_box(7)
					else
						box = in_box(8)
				end
		end
	end

	def in_row(row)
		in_array(@array[row])
	end

	def in_column(col)
    transposed = @array.transpose
		in_array(transposed[col])
	end

	def options(coordinate)
		row = coordinate[0]
		col = coordinate[1]
		in_row = in_row(row)
		in_column = in_column(col)
		in_box = which_box(coordinate)
		options = in_box + in_column + in_row
		options.uniq!
		complement = []
		(1...10).each do |i|
      complement << i if !options.include?(i.to_s)
		end
		complement
	end
end

game = Sudoku.new('702806519100740230005001070008000002610204053200000100070400800064078005821503907')

game.solve!
puts game.board