=begin
Create the method which receives a parameter as an array of numbers,
and returns the "medium".
=end

def medium(array_of_numbers)
	sorted = array_of_numbers.sort
	len = array_of_numbers.length
	(sorted[(len - 1) / 2] + sorted[len / 2]) / 2.0
end


# Test
p medium([4, 5, 6]) == 5
p medium([-3, 0, 3]) == 0
p medium([2, 3, 4, 5]) == 3.5
p medium([1, 8, 10]) == 8