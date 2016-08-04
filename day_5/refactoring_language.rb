#todo

def language(speak)
	case speak
	when speak == 'JavaScript'
		'I like JavaScript'
	when speak == 'CSS'
		'I like CSS'
	when speak == 'Python'
		'I like Python'
	when speak == 'R'
		'I like R'
	when speak == 'C++'
		'I like C++'
	when speak == 'Unity'
		'I like Unity'
	when speak == 'Ruby'
		'I like Ruby'
	when speak == 'Ruby on Rails'
		'I like Ruby on Rails'
	when speak == 'Java'
		'I like Java'
	else
		'I don\'t like to code'
	end
end

#test
p language('JavaScript') #== 'I like JavaScript'
p language('Unity') #== 'I like Unity'
p language('Swin') == 'I don\'t like to code'