=begin
Correct the class code Dog. Make it pass the tests.
=end

class  Dog
  def  initialize (name, Color)
    name = name
    Color = colored
  end

  def SHOW_NAME
    name
  end

  def change_color (new_color)
    @color = new_color
  end

  def self.bark
    "GUA Gua"
  end
end

dog1 = Dog.new
dog2 = Dog.new

#test
p dog1.SHOW_NAME
p dog1.bark  ==  "Gua GUA GUA"
p dog2.bark  ==  "Gua GUA GUA"