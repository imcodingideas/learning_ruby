require_relative 'app'

def assert(truthy)
  raise 'Tests failed' unless truthy
end

chef = Chef.all

chef = Chef.create(first_name: "Joseph", last_name: "Chambers", birthday: "1984-01-23", email: "joseph@michael-chambers.com", phone: "6621126828")
assert chef[:email] == "joseph@michael-chambers.com"

puts 'finished'
