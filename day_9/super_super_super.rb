class People
  def initialize(name)
    @name = name
  end
end

class Man < People

  def initialize
  end

end

class Woman < People
end

#test
man = Man.new("brown")
woman = Woman.new("leyla")

p man.name == "brown"
#=>true
p man.color == "brown"
#=>true


p man.color = "red"
#=>...undefined method `color='...


p woman.name == "leyla"
#=>true
woman.name = "Karla"
p woman.name == "Karla"
#=>true


p woman.color == "leyla"
#=>...undefined method `color'...