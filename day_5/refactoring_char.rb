def char
	%w(A B C D E F G H I J K).map { |char| char }.join(', ')
end

#test
p char == 'A, B, C, D, E, F, G, H, I, J, K'