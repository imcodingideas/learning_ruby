=begin
Define an array_index method that takes as an argument of an array of letters
as well as a factor and should return an array like the following:
=end

def array_index(array_of_letters, repeater)
	master_array = Array.new

	array_of_letters.each do |char|
		#store array of the repeated
		repeated_array = Array.new

		starts_at = 1
		#interate over the the repeater
		repeater.times do
			repeated_array.push(starts_at)
			starts_at += 1
		end

		#push to the master_array
		master_array.push([char, repeated_array])
	end

	master_array
end

# tests
p array_index(["c", "b", "a"], 2) == [["c", [1, 2]], ["b", [1, 2]], ["a", [1, 2]]]
p array_index(["a"], 3) == [["a", [1, 2, 3]]]