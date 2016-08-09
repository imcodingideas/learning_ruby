=begin
Number Of People In An Age range

Create the total_between_age method receives as parameters:

An Array ages
Minimum Age (MIN_AGE)
Maximum Age (max_age)
And how many people the Array returns have aged MIN_AGE and max_age.
=end

# def total_between_age(ages, min_age, max_age)
#   total = 0
#
#   ages.each do |age|
#     if age >= min_age && age <= max_age
#       total += 1
#     end
#   end
#
#   total
# end

def total_between_age(ages, min_age, max_age)
  if min_age > max_age
    min_age, max_age = max_age, min_age
  end
  spread = min_age..max_age
  ages.count do |number|
    spread.cover?(number)
  end
end

# def total_between_age(ages, min_age, max_age)
#   ages.select { |num| num >= min_age && num <= max_age }.count
# end

# Tests
p total_between_age([10, 20, 30, 40, 50, 60], 20, 40) == 3
p total_between_age([18, 19, 20, 23, 24, 27], 20, 27) == 4