def linear_search(value, array)
  counter = 0
  loop do
    if value == array[counter]
      break
    else
      return nil if counter == array.length-1
      counter +=1
    end
  end
  counter
end

# Tests
random_numbers = [4, 3, 2, 20, 5, 64, 78, 11, 43]
p linear_search(20, random_numbers) == 3
p linear_search(29, random_numbers) == nil

def global_linear_search(string, array)
  empty_array = Array.new
  counter = 0
  loop do
    if string == array[counter]
      empty_array << counter
      break if array.length-1 == counter
      counter += 1
    else
      break if array.length-1 == counter
      counter += 1
    end
  end
  empty_array
end

# Tests
arr = 'entretenerse'.split('')
p global_linear_search("e", arr) == [0, 4, 6, 8, 11]