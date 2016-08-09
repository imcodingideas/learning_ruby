=begin
Create the triangle_type method that receives parameters the size of the 3 sides of a triangle.
The method should return the correct name of the figure according to the rules presented in the test.
=end

def triangle_type()

end

#test
p triangle_type(7, 7, 7) == "Equilateral"
p triangle_type(8, 8, 4) == "Isosceles"
p triangle_type(6, 4, 3) == "Scalene"
p triangle_type(15, 7, 4) == "Scalene"