=begin
fizzbuzz is a game to teach kids where divisions are counting aloud and
depending on the following rules replace some of the numbers by words.

"FizzBuzz" for multiples of 3 and 5
"Fizz" for multiples of 3
"Buzz" for multiples of 5
The same number to any other value.

Create the fizzbuzz method receives as a parameter two integers (min and max)
and returns an Array from min to max replacing them with rules fizzbuzz.
=end

def fizzbuzz(min, max)
	super_array = Array.new
	(min..max).each do |num|
		if num % 5 == 0 and num % 3 == 0
			super_array.push("FizzBuzz")
		elsif num % 5 == 0
			super_array.push("Buzz")
		elsif num % 3 == 0
			super_array.push("Fizz")
		else
			super_array.push(num)
		end
	end
	super_array
end

# test
p fizzbuzz(3, 5) == ["Fizz", 4, "Buzz"]
p fizzbuzz(10, 15) == ["Buzz", 11, "Fizz", 13, 14, "FizzBuzz"]