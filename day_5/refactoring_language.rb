def language(speak)
	case speak
		when 'JavaScript' then 'I like JavaScript'
		when 'CSS' then 'I like CSS'
		when 'Python' then 'I like Python'
		when 'R' then 'I like R'
		when 'C++' then 'I like C++'
		when 'Unity' then 'I like Unity'
		when 'Ruby' then 'I like Ruby'
		when 'Ruby on Rails' then 'I like Ruby on Rails'
		when 'Java' then 'I like Java'
		else 'I don\'t like to code'
	end
end

#test
p language('JavaScript') == 'I like JavaScript'
p language('Unity') == 'I like Unity'
p language('Swin') == 'I don\'t like to code'