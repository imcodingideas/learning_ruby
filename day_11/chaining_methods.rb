# TODO: Refactor looking for elegance
def shout_backwards(string)
	string.upcase.reverse + "!!!"
end

def squared_primes(array)
	prime_numbers = array.find_all do |x|
		(2..x-1).select{|i| x % i == 0 }.count == 0
	end
	prime_numbers.map{|p| p*p}
end

# Tests
puts shout_backwards("hello, boot") == "TOOB ,OLLEH!!!"
puts squared_primes([1, 3, 4, 7, 42]) == [1, 9, 49]