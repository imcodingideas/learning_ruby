class Window
  attr_writer :color
  attr_reader :size

  def initialize
  end

  def open
    puts "open window"
  end

  def close
    puts "close window"
  end
end

# test
window_1.color == "green"
window_1.size = 5
window_1.open == "open green window"
window_1.close == "close window of 5 meters"