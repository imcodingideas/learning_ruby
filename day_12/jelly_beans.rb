# Given an array of numbers printed only items that contain an odd index
# Use: Enumerable#each_with_index
def print_odd_indexed_integers(array)
  array.each_with_index do |item, index|
    if index % 2 != 0
      p item
    end
  end
end

# Given an array of numbers returns an array with only odd numbers
# Use: Enumerable#select
def odd_integers(array)
  array.select {|num| num.odd?}
end

# Given an array and returns the first number limit that is less than the limit
# Use: Enumerable#find
def first_under(array, limit)
  array.find {|i| i < limit}
end


# Given an array of strings and returns a new array where all elements contain the end an exclamation point.
# Use: Enumerable#map
def add_bang(array)
  array.map { |item| item + "!"}
end

# Given an array of numbers calculates the sum of all its elements.
# Use: Enumerable#reduce
# Repeat the exercise with Enumerable#inject
def sum(array)
  array.inject {|sum, n| sum + n}
end


# Given an array of string arranged in groups of three and arrange them alphabetically.
# Use: Enumerable#each_slice
def sorted_triples(array)
  arr = Array.new
  array.each_slice(3) {|a| arr << a.sort}
  arr
end

# Test

print_odd_indexed_integers([2, 4, 6, 8, 10, 12])
# => 4
# => 8
# => 12

puts odd_integers([3, 4, 7, 9, 10, 16]) == [3, 7, 9]

puts first_under([13, 21, 7, 0, 11, 106], 10) == 7

puts add_bang(["hi", "mom"]) == ["hi!", "mom!"]

puts sum([1, 1, 2, 3, 5]) == 12

words = %w(De esta simple manera se puede reorganizar una oración)
p sorted_triples(words) == [["De", "esta", "simple"], ["manera", "puede", "se"], ["oración", "reorganizar", "una"]]