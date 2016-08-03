=begin
Create the method decade that receives a year, and
returns the decade of the year for the whole century.
=end

def decade(year)
	if year.between?(1920, 1929)
		"Twenties"
	elsif year.between?(1940, 1949)
		"Forties"
	elsif year.between?(1950, 1959)
		"Fifties"
	elsif year.between?(1960, 1969)
		"Sixties"
	elsif year.between?(1970, 1979)
		"Seventies"
	elsif year.between?(1980, 1989)
		"Eighties"
	elsif year.between?(1990, 1999)
		"Nineties"
	end
end

# Tests
p decade(1920) == "Twenties"
p decade(1943) == "Forties"
p decade(1952) == "Fifties"
p decade(1960) == "Sixties"
p decade(1975) == "Seventies"
p decade(1982) == "Eighties"
p decade(1999) == "Nineties"