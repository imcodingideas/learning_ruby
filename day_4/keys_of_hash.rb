=begin
Defines a method that receives a hash of your choice and return only the keys
of the hash. For this exercise uses a variant of each method. Create a test method.
=end

secret_identities = {
		'The Batman' => 'Bruce Wayne',
		'Superman' => 'Clark Kent',
		'Wonder Woman' => 'Diana Prince',
		'Freakazoid' => 'Dexter Douglas'
}

secret_identities.each do |cover, name|
	puts "#{cover}: #{name}"
end