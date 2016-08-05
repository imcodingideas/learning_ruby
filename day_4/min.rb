=begin
Create the method parameter min which receives as an array of numbers and returns the smallest number.
Create your own algorithm does not use native methods in the array ruby class as (min and max).
=end

def min(array_of_numbers)
	stored = 1000
	array_of_numbers.each { |n| stored = n if n < stored }
	stored
end

# Tests
p min([-20, -10, 0, 10, 20]) == -20
p min([1, 2, 3, 4, 5]) == 1
p min([5, 4, 3, 2, 1]) == 1