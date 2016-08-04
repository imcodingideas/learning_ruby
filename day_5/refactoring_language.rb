def language(speak)
	case speak
		when 'JavaScript'
			'I like JavaScript'
		when 'CSS'
			'I like CSS'
		when 'Python'
			'I like Python'
		when 'R'
			'I like R'
		when 'C++'
			'I like C++'
		when 'Unity'
			'I like Unity'
		when 'Ruby'
			'I like Ruby'
		when 'Ruby on Rails'
			'I like Ruby on Rails'
		when 'Java'
			'I like Java'
		else
			'I don\'t like to code'
	end
end

#test
p language('JavaScript') == 'I like JavaScript'
p language('Unity') == 'I like Unity'
p language('Swin') == 'I don\'t like to code'