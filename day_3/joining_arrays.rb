=begin
Define a method join_arrays which receives parameter as 2 arrays
and returns a new array with the contents of the two Arrays.
Do not use concatenation.
=end

def join_arrays(a, b)
	joined_array = Array.new
	joined_array.push(a, b).flatten!
end

# tests
p join_arrays([1, 2, 3], [4, 5, 6]) == [1, 2, 3, 4, 5, 6]
p join_arrays(['a', 'b', 'c'], ['d', 'e', 'f']) == ['a', 'b', 'c', 'd', 'e', 'f']