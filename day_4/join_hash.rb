=begin
Defines a method join_hash that receives three hashes and returns the
union of the hashes. Cannot use merge.
=end

def join_hash(*args)
	joined = Hash.new

	args.each do |element|
		element.each do |k, v|
			joined[k] = v
		end
	end

	joined
end

#hashes
fruit = {name: 'pineapple'}
weight = {weight: '1 kg'}
taste = {taste: 'good'}

#test
p join_hash(fruit, weight, taste) == {:name=> 'pineapple', :weight=> '1 kg', :taste=> 'good'}