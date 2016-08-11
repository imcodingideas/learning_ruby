#superclass

class Mammal
  def breath
    puts 'inhale, exhale'
  end
end

# the symbol < indicates 'Cat' is a subclass of Mammal

class Cat < Mammal
  def meow
    puts 'Miaaaaaaaaaaau'
  end
end

class Dog < Mammal
  def bark
    puts 'Woof Woof'
  end
end

kitty = Cat.new
doggy = Dog.new
kitty.breath
kitty.meow
doggy.breath
doggy.bark