=begin
Consider the following:

The average_grade method must accept a parameter card and use yield to call a block.
The block should return average ratings. Check using the Time class.

Refactor code using inject.
=end

def average_grade
  yield
end

def average_grade(grades)
  count = 0
  average = 0
  grades.each{ |grade|
    average += grade
    count += 1
  }
  average.to_f / count
end