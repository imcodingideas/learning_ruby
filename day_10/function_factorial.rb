def factorial(number)
  (number <= 1) ? 1 : number * factorial(number - 1)
end

factorial(6) #= 1 * 2 * 3 * 4 * 5 * 6 = 720

# Tests

p factorial(5) == 120
p factorial(4) == 24
p factorial(0) == 1
p factorial(1) == 1
p factorial(6) == 720