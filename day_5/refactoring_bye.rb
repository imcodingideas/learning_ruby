#Refactor to one line of code:
def bye(numbers)
	list = Array.new ; numbers.each { |number| (number < 10) ? list << 'Smaller' : list << number } ; list
end

#test
p bye([2, 4, 6, 10, 20, 40, 76]) == ['Smaller', 'Smaller', 'Smaller', 10, 20, 40, 76]