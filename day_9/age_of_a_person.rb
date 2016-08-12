=begin
Create the class Person and define the method age to call a method to calculate the age of the person.
You must use a native ruby method to help you get the current year.
=end

class Person
  attr_accessor :name, :age
  CURRENT_YEAR = Time.now.year

  def initialize(n, a)
    @name = n
    @age = a
  end

  def age
    "#{name} is #{years_old} years old."
  end

  private
  def years_old
    CURRENT_YEAR - @age.to_i
  end
end

carlos = Person.new("Carlos", "1986")
martha = Person.new("Martha", "1990")


#test
p carlos.age == "Carlos is 30 years old."
#=>true
p martha.age == "Martha is 26 years old."
#=>true

p carlos.years_old
#=>private method `years_old'...(NoMethodError)