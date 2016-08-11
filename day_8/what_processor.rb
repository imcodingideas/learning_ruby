=begin
Create the "Computer" class and add a method to only see and not modify the computer processor.
=end

class Computer
  attr_reader :processor

  def initialize(processor)
    @processor = processor
  end

end

mac = Computer.new("Intel")
mac

# test
p mac.processor == "Intel"
#=>"Intel"
mac.processor = "AMD"
#=>...undefined method `processor='...