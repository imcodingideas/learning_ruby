#creating a simple hash
store_catalog = {
		:shirt => 5,
		:tshirt => 3,
		:short => 7,
    :pants => 2
}

selected_from_store = store_catalog.select { |k,v| k == :shirt}
p selected_from_store

#getting the price of a shirt
p store_catalog[:shirt]

#modify the value the hash
store_catalog[:pants] = 2

new_hash = Hash.new

fruit_basquet = {
		'banana' => 6,
    'strawberry' => 2,
    'lime' => 10
}

fruit_basquet['grapes'] = '1'

selected_fruit = fruit_basquet.select { |k,v| k == 'banana' }
p selected_fruit