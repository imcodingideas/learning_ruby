=begin
Define a method that receives a hash of your choice
and print the keys and values of the hash. Create the
appropriate tests for this method.
=end

def takes_hash(how_often)
	get_hash_name = how_often.keys[0].slice(0..-1)
	get_hash_value = how_often[:frequency]

	"Hash key is '#{get_hash_name}' and its value is #{get_hash_value}"
end

#tests
p takes_hash({frequency: 4 }) == "Hash key is 'frequency' and its value is 4"