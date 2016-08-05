print 'Write something please: '
user_input = gets.chomp
user_input.downcase!

if user_input.include? 's'
	user_input.gsub!(/s/, 'th')
else
	puts 'You\'re no fun! Use a word with a S to see the action'
end

puts "Your input was #{user_input}"