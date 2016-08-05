=begin
Refactor in a line of code and corrects the necessary code,
so that the test is true. The test can not be changed.
=end

def validate(arr)
	!arr.respond_to?(:to_s)
end

#test
p validate([1, 3, 5]) == false