=begin
What classes inherit behavior Dogand Cat superclass? Make the necessary tests to be true code.
=end

class Animal

end

class Dog

end

class Cat

end

#test
drako = Dog.new("Drako")
peto = Cat.new
p drako.speak == "Drako say Guau!"
# => true
p peto.speak == "Hello!"
# => true