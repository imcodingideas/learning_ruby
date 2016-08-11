class Animal
  def breath
    'inhale, exhale'
  end
end

class Fish < Animal
  FISH = 'Fish'

  def swim
    "#{FISH} can swim."
  end
end

class Mammal < Animal
  def warm_blooded?
    return true
  end
end

class Dog < Mammal
  DOG = 'Dog'

  def bark
    "A #{DOG} goes woof!"
  end
end

class Cat < Mammal
  CAT = 'Cat'

  def meow
    "A #{CAT} goes meow!"
  end
end

max = Dog.new
max

nemo = Fish.new
nemo

wiskers = Cat.new
wiskers

# test
p max.breath == "inhale, exhale"
p max.warm_blooded? == true
p max.bark == 'A Dog goes woof!'

p nemo.breath == "inhale, exhale"
p nemo.swim == "Fish can swim."

p wiskers.breath == "inhale, exhale"
p wiskers.warm_blooded? == true
p wiskers.meow == 'A Cat goes meow!'
