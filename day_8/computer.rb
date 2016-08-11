=begin
Create the class Computer and add a method to change and see the color of the computer.
=end

class Computer
  attr_accessor :color

  def initialize(color)
    @color = color
  end

end

mac = Computer.new('Platinum')

# test
mac.color = 'Platinum'
p mac.color