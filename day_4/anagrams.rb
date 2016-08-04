=begin
Define an anagrams method that receives an array of words, and groups of words than return
anagrams. Remember Anagrams are words that have the same letters but in a different order.
=end

words = %w(demo none tied evil dome mode live fowl veil wolf diet vile edit tide flow neon)

def anagrams(words)
	words.group_by do |element|
		element.downcase.chars.sort
	end.values
end

#test
p anagrams(words) == [['demo', 'dome', 'mode'], ['none', 'neon'], ['tied', 'diet', 'edit', 'tide'], ['evil', 'live', 'veil', 'vile'], ['fowl', 'wolf', 'flow']]