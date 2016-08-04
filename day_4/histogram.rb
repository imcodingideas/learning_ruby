puts 'Write a sentence here'
text = gets.chomp

words = text.split(' ')

frequencies = Hash.new(0)

words.each do |word|
	frequencies[word] += 1
end

frequencies = frequencies.sort_by do |w, n|
	n
end

frequencies.reverse!

frequencies.each do |w, n|
	puts w + ' ' + n.to_s
end