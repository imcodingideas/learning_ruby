#Refactor to one line of code:
def bye(numbers)
	numbers.map { |number| (number < 10) ? 'Smaller' : number }
end

#test
p bye([2, 4, 6, 10, 20, 40, 76]) == ['Smaller', 'Smaller', 'Smaller', 10, 20, 40, 76]