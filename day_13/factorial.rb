def factorial_iterative(n)
  sum = 1
  until n == 0
    sum *= n
    n -= 1
  end
  sum
end

p factorial_iterative(5) == 120


def factorial_recursive(n)
  factorial = Hash.new do |h,k|
    (k > 1) ? h[k] = h[k-1] * k : h[k] = 1
  end
  factorial[n]
end

p factorial_recursive(5) == 120