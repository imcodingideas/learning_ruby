=begin
Create a method named average that receives a parameter as an array of numbers,
and returns the average.
=end

def average(array_of_numbers)
	array_of_numbers.reduce(:+).to_f / array_of_numbers.size
end

# Tests
p average([8, 8, 7, 6, 9]) == 7.6
p average([5, 5, 5, 8, 8, 7, 7, 7]) == 6.5
p average([5, 5, 5, 8, 8, 7, 7, 2]) == 5.875