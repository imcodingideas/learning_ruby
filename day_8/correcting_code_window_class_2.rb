=begin
Correct the class Window. Do not use attr_reader, attr_writer or attr_accessor. Make pass the tests.
=end

class Window

  def initialize
  end

  def open
    puts "open window"
  end

  def close
    puts "close window"
  end
end

#test
window_1.color == "green"
window_1.size = 5
window_1.open == "open green window"
window_1.close == "close window of 5 meters"