require 'benchmark'

# Recursive
def fibonacci_recursive(num)
  return num if (0..1).include? num
  (fibonacci_recursive(num - 1) + fibonacci_recursive(num - 2))
end

# Iterative
def fibonacci_iterative(num)
  if num != 0
    arr = [1,1]
    (2..num).each { |x| arr.push((arr[x-2] + arr[x-1])) }
  else
    return 0
  end
  arr[num-1]
end

n = 1_000_000
puts Benchmark.bm { |x|
  x.report { n.times { ; fibonacci_iterative(9); } }
}

n = 1_000_000
puts Benchmark.bm { |x|
  x.report { n.times { ; fibonacci_recursive(9); } }
}

p fibonacci_iterative(0) == 0
p fibonacci_iterative(1) == 1
p fibonacci_iterative(2) == 1
p fibonacci_iterative(3) == 2
p fibonacci_iterative(4) == 3
p fibonacci_iterative(5) == 5

p fibonacci_recursive(0) == 0
p fibonacci_recursive(1) == 1
p fibonacci_recursive(2) == 1
p fibonacci_recursive(3) == 2
p fibonacci_recursive(4) == 3
p fibonacci_recursive(5) == 5