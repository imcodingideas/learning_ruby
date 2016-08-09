=begin
Creates the Proc pair to identify even numbers. Make pass the test.
=end

numbers = [2, 4, 7, 10, 23, 34, 45, 42]

pair = Proc.new do |input|
  input.to_i.even? ? 'Pair' : input
end

#test
p numbers.map(&pair) == ["Pair", "Pair", 7, "Pair", 23, "Pair", 45, "Pair"]