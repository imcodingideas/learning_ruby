puts "self equals: #{self}"

# Returns main because it's top level namespace. It's not in a class.

# class DummyClass
#   def instance_method
#     puts 'This is running when the class is defined'
#     "In this context self equals: #{self}"
#   end
# end
#
# dummy_class = DummyClass.new()
# p dummy_class.instance_method

# the instance method returns the name of the object id

class DummyClass
  def self.class_method
    puts 'This is running when the class is defined'
    "In this context self equals: #{self}"
  end
end

DummyClass.new()
p DummyClass.class_method

# self on a class method returns the name of the class. the diff between the two is how you instantiate the instance method.