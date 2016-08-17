def shuffle(array)
  random_numbers = Random.new
  indices_array = Array.new
  while indices_array.length < array.length
    num = random_numbers.rand(array[0]..array.last)
    indices_array << num unless indices_array.include?(num)
  end
  indices_array
end


# Driver code:
array = (1..15).to_a

p shuffle(array)

10.times do |variable|
  raise "This shouldn't be happening" if shuffle(array) == shuffle(array)
end
p true