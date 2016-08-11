=begin
What classes inherit behavior Dogand Cat superclass? Make the necessary tests to be true code.
=end

class Animal
  def speak
    'Hello!'
  end
end

class Dog < Animal
  attr_accessor :name

  def initialize(n)
    self.name = n
  end

  def speak
    "#{self.name} say Guau!"
  end

end

class Cat < Animal
end

# Test
drako = Dog.new("Drako")
peto = Cat.new
p drako.speak == "Drako say Guau!"
# => true
p peto.speak == "Hello!"
# => true