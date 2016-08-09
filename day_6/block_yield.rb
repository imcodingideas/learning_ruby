=begin
Refactor code using inject.

Consider the following:

The average_grade method must accept a parameter card and use yield to call a block.
The block should return average ratings. Check using the Time class.
=end

require 'Time'

array = [1, 2, 10, 40, 66, 9, 3, 4, 12, 6]
def average_grade(array)
  yield array
end

calc_grade = average_grade(array) do |g|
  count = 0
  average = 0
  g.each do |grade|
    average += grade
    count += 1
  end
  average.to_f / count
end

p calc_grade

puts "# ------------Benchmak started----------"
start_time = Time.now
puts "# Start time: #{start_time}"
puts
puts "# Average is: #{calc_grade}"
end_time = Time.now
puts "# End time: #{end_time}"
puts
puts "# -------------Benchmak finished--------"
calc_time = (end_time.nsec - start_time.nsec) / 1000000000.to_f
puts "# Result: #{calc_time} seconds"
