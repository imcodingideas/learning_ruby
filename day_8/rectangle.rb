=begin
Create the following methods within the class Rectangle:

Rectangle#area, Returns the area of ​​the rectangle.
Rectangle#perimeter, Returns the perimeter of the rectangle
Rectangle#diagonal, Returns the size of the diagonal of the rectangle as Float
Rectangle#square?, Returns true if the rectangle is a square
=end

class Rectangle
  attr_accessor :width, :height

  def initialize(width, height)
    @width = width
    @height = height
  end

  def area
    width * height
  end

  def perimeter
    (width * 2) + (height * 2)
  end

  def diagonal
    Math.sqrt((height.to_f ** 2) + (width.to_f ** 2))
  end

  def square?
    (width == height) ? true : false
  end

end


# Tests

rectangle = Rectangle.new(20, 10)
puts rectangle.area == 200
puts rectangle.perimeter == 60
puts rectangle.diagonal == 22.360679774997898
puts rectangle.square? == false

rectangle2 = Rectangle.new(10, 10)
puts rectangle2.area == 100
puts rectangle2.perimeter == 40
puts rectangle2.diagonal == 14.142135623730951
puts rectangle2.square? == true