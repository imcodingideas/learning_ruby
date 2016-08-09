=begin
Create the method the leap_year? which receives the parameter year, and returns true or false
whether the year is not a leap year.
=end

def leap_year?(year)
  if year % 4 == 0 && year % 100 != 0 || year % 400 == 0
    true
  else
    false
  end
end

# Tests
p leap_year?(1900) == false
p leap_year?(1988) == true
p leap_year?(1989) == false
p leap_year?(1992) == true
p leap_year?(2000) == true
p leap_year?(2001) == false
p leap_year?(1600) == true
p leap_year?(1704) == true