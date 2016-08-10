=begin
Correct the class code Dog. Make it pass the tests.
=end

class  Dog
  def  initialize (name, color)
    @name = name
    @color = color
  end

  def SHOW_NAME
    @name
  end

  def change_color (new_color)
    @color = new_color
  end

  def bark
    "Gua GUA GUA"
  end
end

dog1 = Dog.new('Max', 'Multi')
dog2 = Dog.new('Princess', 'Black')

#test
p dog1.SHOW_NAME
p dog1.bark  ==  "Gua GUA GUA"
p dog2.bark  ==  "Gua GUA GUA"