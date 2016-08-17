require 'benchmark'

def find_index(values, target)
  binary_search(values, target, 0, values.length-1)
end

def binary_search(values, target, start, last)
  middle = (start + last)/2
  value = values[middle]

  if value > target
    binary_search(values, target, start, middle)
  elsif value < target
    binary_search(values, target, middle+1, last)
  else
    middle
  end
end

p Benchmark.realtime { find_index([1, 4, 6, 7, 12, 13, 15, 18, 19, 20, 22, 24], 20) == 9 } * 1000

p find_index([1, 4, 6, 7, 12, 13, 15, 18, 19, 20, 22, 24], 20) == 9