=begin
A dudeney number is an integer that is a perfect cube, so that the sum of its digits
results in the cube root of the number.
=end

def dudeney_number?(number)
  sum ||= 0
  number.round.to_s.chars.each { |digit| sum += digit.to_i }
  sum == (number ** (1/3.0)).round ? true : false
end

# test
p dudeney_number?(1) == true
p dudeney_number?(125) == false
p dudeney_number?(512) == true
p dudeney_number?(1_728) == false
p dudeney_number?(5_832) == true