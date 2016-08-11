=begin
Correct the class Window. Do not use attr_reader, attr_writer or attr_accessor. Make pass the tests.
=end

class Window

  def initialize(color, size)
    @color = color
    @size = size
  end

  def color
    @color
  end

  def size=(new_size)
    @size = new_size
  end

  def open
    "open #{@color} window"
  end

  def close
    "close window of #{@size} meters"
  end
end

window_1 = Window.new("green", 2)
window_1

#test
p window_1.color == "green"
window_1.size = 5
p window_1.open == "open green window"
p window_1.close == "close window of 5 meters"