=begin
Create the method spray_paint that can be called on an instance and change the color of the door. Make pass the test.
=end

def spray_paint(color)
  attr_accessor :color

  puts "The #{color} door looks great!"

end

big_door = spray_paint('green')

# test
p big_door.spray_paint('yellow') == "The Yellow door looks great!"