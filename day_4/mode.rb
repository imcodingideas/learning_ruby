=begin
Create a mode method that receives an array as a parameter,
and returns an array with numbers that are repeated more times.

If there is a number that is repeated more often than others,
it returns an array with a single element
=end

def mode(array)
	count = []
	output = []
	array.compact
	unique = array.uniq
	j=0

	unique.each { |i|
		count[j] = array.count(i)
		j+=1
	}

	k=0

	count.each { |i|
		output[k] = unique[k] if i == count.max
		k+=1
	}

	output.compact
end

# Tests
p mode([1, 2, 2, 3]) == [2]
p mode([1, 2, 2, 3, 3, 4]) == [2, 3]
p mode([1, 2, 3]) == [1, 2, 3]
p mode([0, 1, 2, 3, 4, 0]) == [0]