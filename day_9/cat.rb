=begin
Defines the methods private and protected to calculate the age of the cat, as well as add the code that is
needed for the appropriate test to be true. Check the documentation.
=end

class Cat
  CAT_YEARS = 7
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def cat_years
    @age * CAT_YEARS
  end

  private
  def human_years
    @age / CAT_YEARS
  end

end

kitty = Cat.new("kitty", 2)

# Test
p kitty.cat_years == 14
#p kitty.human_years

class Vitamin

  def a_public_method
    "Will this work? " + a_protected_method
  end

  protected
  def a_protected_method
    "Yes, I'm protected!"
  end

end

vitamin = Vitamin.new

# Test
p vitamin.a_public_method == "Will this work? Yes, I'm protected!"
# vitamin.a_protected_method