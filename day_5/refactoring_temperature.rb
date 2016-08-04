def temperature(degree)
	if (0..5).include?(degree)
			'Temperature is between 0 and 5'
	elsif (6..10).include?(degree)
			'Temperature is between 6 and 10'
	elsif (11..15).include?(degree)
			'Temperature is between 11 and 15'
	elsif (16..20).include?(degree)
			'Temperature is between 16 and 20'
	elsif (21..25).include?(degree)
			'Temperature is between 21 and 25'
	elsif (26..30).include?(degree)
			'Temperature is between 26 and 30'
	elsif (31..35).include?(degree)
			'Temperature is between 31 and 35'
	elsif (36..40).include?(degree)
			'Temperature is between 36 and 40'
	else
			'Temperature is greater than 40'
	end
end

#test
p temperature(23) == 'Temperature is between 21 and 25'
p temperature(45) == 'Temperature is greater than 40'
p temperature(34) == 'Temperature is between 31 and 35'