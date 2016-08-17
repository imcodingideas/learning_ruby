require 'benchmark'

def factorial_iterative(n)
  sum = 1
  until n == 0
    sum *= n
    n -= 1
  end
  sum
end

p Benchmark.realtime { factorial_iterative(5) == 120 } * 1000
p factorial_iterative(5) == 120


def factorial_recursive(n)
  factorial = Hash.new do |h,k|
    (k > 1) ? h[k] = h[k-1] * k : h[k] = 1
  end
  factorial[n]
end

p Benchmark.realtime { factorial_recursive(100) == 93326215443944152681699238856266700490715968264381621468592963895217599993229915608941463976156518286253697920827223758251185210916864000000000000000000000000 } * 1000
p factorial_recursive(5) == 120