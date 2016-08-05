=begin
Create the preferred method receives as a parameter an array of numbers and returns the largest number.
Create your own algorithm does not use native methods in the array ruby class as (min and max).
=end

def max(array_of_numbers)
	stored = 0
	array_of_numbers.each { |n| stored = n if n > stored }
	stored
end

# tests
p max([-20, -10, 0, 10, 20]) == 20
p max([1, 2, 3, 4, 5]) == 5
p max([5, 4, 3, 2, 1]) == 5