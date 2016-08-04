=begin
Define a method that receives a hash of your choice, and return only the hash values.
For this exercise use a variant of each method. Create a test method.
=end

def secret_identities(super_heros)
	return super_heros.each_value { |identity| return "#{identity}" }
end

p secret_identities({'The Batman' => 'Bruce Wayne'}) == 'Bruce Wayne'
p secret_identities({'Superman' => 'Clark Kent'}) == 'Clark Kent'
p secret_identities({'Wonder Woman' => 'Diana Prince'}) == 'Diana Prince'
p secret_identities({'Freakazoid' => 'Dexter Douglas'}) == 'Dexter Douglas'