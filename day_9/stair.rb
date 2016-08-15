=begin
Create the class Stair with attributes material and size. It also defines the method larger_size_than?
that lets you know if a ladder is bigger than another. It is important to consider that the getter method size
should not be public, so that if you try to use an instance (stair_one.size) will raise an error.
=end

class Stair
  attr_accessor :material

  def initialize(material, size)
    @material = material
    @size = size
  end

  def larger_size_than?(obj)
    @size > obj.size
  end

  protected
  def size
    @size
  end

end

# Test
metal = Stair.new("Metal", 54)
wood = Stair.new("Wood", 23)
p "Well done!" if metal.larger_size_than?(wood)