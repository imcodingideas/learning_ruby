def dictionary_sort
	store_words = []
	puts "Enter a word:"
	user_word = gets.chomp
	while user_word != ""
		store_words << user_word if user_word != "0" && user_word.to_i == 0 && user_word.strip != ""
		puts "Write another word (or press 'enter' to finish):"
		user_word = gets.chomp
	end
	puts "Congratulations! Your dictionary has #{store_words.length} words: "
	puts store_words.sort_by {|word| word.downcase}
end

dictionary_sort