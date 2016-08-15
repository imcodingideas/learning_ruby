=begin
Add a class variable to the superclass Vehicle that can keep track of the number of objects created that
inherit from the Superclass. Also provides a method to print the value of this variable class.
=end

class Vehicle
  @@no_objects =0

  def initialize
    @@no_objects += 1
  end

  def self.number_of_vehicles
    "This Superclass has created #{@@no_objects} vehicles"
  end
end

class Car < Vehicle ; end
class Bus < Vehicle ; end

#test
vehicle = Car.new
car = Car.new
bus = Bus.new

p Car.number_of_vehicles == 'This Superclass has created 3 vehicles'