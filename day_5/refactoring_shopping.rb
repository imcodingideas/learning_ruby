def shopping(list)
	basket_shopping = Array.new

	list.join(', ') if basket_shopping.empty?
end

#test
p shopping(['eggs', 'milk', 'bread', 'orange juice']) == 'eggs, milk, bread, orange juice'