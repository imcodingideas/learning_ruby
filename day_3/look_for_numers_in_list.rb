=begin
Define a numbers method that receives an array of numbers, and returns true if a given number is listed.
=end

def numbers(array_of_numbers, looking_for)
  validation_array = Array.new

  array_of_numbers.each do |number|
    validation_array.push(number)
  end

  if validation_array.include? looking_for
    return true
  else
    return false
  end

end

#test
p numbers([1, 3, 5, 7, 9, 11], 5) == true
p numbers([1, 50, 24, 7, 9, 100], 25) == false
p numbers([11, 33, 55, 77, 99, 11], 33) == true
p numbers([20, 43, 55, 77, 99, 40], 43) == true