=begin
The method super allows us to call methods of the inheritance hierarchy. When called super from a method,
find the inheritance hierarchy for a method with the same name and invokes it .
=end

class People
  def greeting
    'Hello!'
  end
end

class Women < People
  def greeting
    super + ' from People class'
  end
end


angie = Women.new
p angie.greeting
#=> "Hello! from People class"