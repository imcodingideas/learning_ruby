=begin
Create a get_index method that receives an array of numbers and returns the value and rate of each of the elements in an array.
=end

def get_index(input)
  get_indices = Array.new

  input.each_with_index do |n, i|
    get_indices.push([n, i])
  end

  get_indices
end

# tests
p get_index([2, 10, 6, 34, 0, 3]) == [[2, 0], [10, 1], [6, 2], [34, 3], [0, 4], [3, 5]]