def prime_factors(number)
  counter = 0
  empty_array = []
  prime_numbers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
  loop do
    if number % prime_numbers[counter] == 0
      number = number / prime_numbers[counter]
      empty_array << prime_numbers[counter]
      counter = 0
    else
      counter += 1
    end
    break if number == 1
  end
  empty_array
end

p prime_factors(4) == [2, 2]
p prime_factors(9) == [3, 3]
p prime_factors(12) == [2, 2, 3]
p prime_factors(34) == [2, 17]