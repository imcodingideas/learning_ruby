=begin
Define a prime method that accepts a parameter and use yield to call a block.
The block must return the first ten prime numbers in an array.
=end

require 'prime'

def prime(numbers)
  yield numbers
end

take_em = prime(Prime.first(10)) do |prime|
  prime
end

# Tests
p take_em == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]