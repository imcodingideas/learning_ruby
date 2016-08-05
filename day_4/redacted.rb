puts 'What do you want to search? '
text = gets.chomp

puts 'What word do you want to hide? '
redact = gets.chomp

words = text.split(' ')

words.each do |w|
	(w != redact) ? print w + ' ' : print 'REDACTED '
end