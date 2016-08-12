def fibonacci(number)
  number <= 1 ? number :  fibonacci( number - 1 ) + fibonacci( number - 2 )
end

# Test
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(10) == 55