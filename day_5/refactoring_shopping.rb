def shopping(list)
	list.join(', ')
end

#test
p shopping(['eggs', 'milk', 'bread', 'orange juice']) == 'eggs, milk, bread, orange juice'