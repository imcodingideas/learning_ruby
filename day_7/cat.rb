=begin
Create a class Cat that allows creating objects Cat with different names, and that allows the cat
to do the following: meow, run, and jump. Make it pass the corresponding tests.
=end

#test
cat_3 = Cat.new('Kitty')

p cat_1.jump == 'Leaping...'
p cat_5.jump == 'Leaping...'
p Cat.meow == 'Meow... Meow...'
p cat_3.run == 'Running 0 mts...'
p cat_3.run(20) == 'Running 20 mts...'
p cat_3.run(10) == 'Running 30 mts...'
p cat_3.run(10) == 'Running 40 mts...'