=begin
Defines a method that receives a hash of your choice and return only the keys
of the hash. For this exercise uses a variant of each method. Create a test method.
=end

def secret_identities(super_heros)
	super_heros.each_key do |identity|
		return "#{identity}"
	end
end

p secret_identities({'The Batman' => 'Bruce Wayne'}) == 'The Batman'
p secret_identities({'Superman' => 'Clark Kent'}) == 'Superman'
p secret_identities({'Wonder Woman' => 'Diana Prince'}) == 'Wonder Woman'
p secret_identities({'Freakazoid' => 'Dexter Douglas'}) == 'Freakazoid'