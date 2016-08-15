class People
  attr_accessor :name

  def initialize(name)
    @name = name
  end

end

class Man < People
  attr_reader :color

  def initialize(name)
    super
    @color = @name
  end

end

class Woman < People
  attr_writer :color

  def initialize(name)
    super
  end

end

#test
man = Man.new("brown")
woman = Woman.new("leyla")

# Tests
p man.name == "brown"
p man.color == "brown"
#p man.color = "red"
p woman.name == "leyla"
woman.name = "Karla"
p woman.name == "Karla"
#p woman.color == "leyla"