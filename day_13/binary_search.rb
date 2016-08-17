def find_index(values, target)
  binary_search(values, target, 0, values.length-1)
end

def binary_search(values, target, start, last)
  middle = (start + last)/2

  if values[middle] > target
    binary_search(values, target, start, middle)
  elsif values[middle] < target
    binary_search(values, target, middle+1, last)
  else
    middle
  end
end

p find_index([1, 4, 6, 7, 12, 13, 15, 18, 19, 20, 22, 24], 20) == 9