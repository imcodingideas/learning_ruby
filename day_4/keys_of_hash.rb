=begin
Defines a method that receives a hash of your choice and return only the keys
of the hash. For this exercise uses a variant of each method. Create a test method.
=end

def secret_identities(super_heros)
	super_heros.each do |cover, name|
		return "#{cover}: #{name}"
	end
end

p secret_identities('The Batman' => 'Bruce Wayne') == 'The Batman: Bruce Wayne'
p secret_identities('Superman' => 'Clark Kent') == 'Superman: Clark Kent'
p secret_identities('Wonder Woman' => 'Diana Prince') == 'Wonder Woman: Diana Prince'
p secret_identities('Freakazoid' => 'Dexter Douglas') == 'Freakazoid: Dexter Douglas'