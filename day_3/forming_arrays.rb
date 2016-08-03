=begin
Define the method array_index that receives an array as an argument of
letters as well as a factor, and should return an array like the following:
=end

def array_index(array_of_letters, repeater)
  master_array = Array.new
  starts_at = 1

  array_of_letters.each do |char|
	  repeater.times do
		  master_array.push([char, starts_at])
		  starts_at += 1
	  end
	  starts_at = 1
  end

  master_array
end

#test
p array_index(["c", "b", "a"], 2) == [["c", 1], ["c", 2], ["b", 1], ["b", 2], ["a", 1], ["a", 2]]
p array_index(["a"], 3) == [["a", 1], ["a", 2], ["a", 3]]

