=begin
Modify the class Person and the code you need to change tests except the parts indicate that should not be changed.
Make sure the corresponding tests pass.
=end

class Person
  attr_accessor :age

  #Cannot modify this class method
  def self.birthday
    @@age += 1
  end
end

alice = Person.new

# test
alice.age = 17
p alice.age == 17
#=> true
alice.@age
p alice.birthday == 18
#=> true