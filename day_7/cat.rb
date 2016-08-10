=begin
Create a class Cat that allows creating objects Cat with different names, and that allows the cat
to do the following: meow, run, and jump. Make it pass the corresponding tests.
=end

class Cat

  def initialize(cat)
    @cat = cat
    @distance = 0
  end

  def name
    @cat
  end

  def jump
    'Leaping...'
  end

  def self.meow
    'Meow... Meow...'
  end

  def run(number = 0)
    @distance += number
    "Running #{@distance} mts..."
  end

end

#test
# This is an object
cat_3 = Cat.new('Kitty')
cat_1 = Cat.new('Random')
cat_5 = Cat.new('Cat 5')

p cat_1.jump == 'Leaping...'
p cat_5.jump == 'Leaping...'

# this is a behavior
p Cat.meow == 'Meow... Meow...'

p cat_3.run == 'Running 0 mts...'
p cat_3.run(20) == 'Running 20 mts...'
p cat_3.run(10) == 'Running 30 mts...'
p cat_3.run(10) == 'Running 40 mts...'