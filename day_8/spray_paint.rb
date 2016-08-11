=begin
Create the method spray_paint that can be called on an instance and change the color of the door. Make pass the test.
=end

class Paint
  attr_accessor :color
  def initialize(color)
    @color = color
  end

  def spray_paint(color)
    "The #{@color} door looks great!"
  end

end

big_door = Paint.new('Yellow')
big_door

# test
p big_door.spray_paint('yellow') == "The Yellow door looks great!"