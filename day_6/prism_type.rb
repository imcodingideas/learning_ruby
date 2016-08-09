=begin
Create a method prism_type that receives parameters the size of the 3 sides of a prism.

If all sides are of different sizes the geometric figure is called cuboid.
If 2 sides are the same size: rectangular prism.
If the three sides are the same size it is a cube.

Your method should return the correct name of the figure according to the above rules.
=end

def prism_type(*args)

end


# Tests
p prism_type(5, 5, 5) == "Cube"
p prism_type(5, 5, 4) == "rectangular prism"
p prism_type(5, 4, 3) == "cuboid"
p prism_type(10, 8, 2) == "cuboid"