# local_var = 'this is my local var'
#
# def return_my_local_var
#   local_var
# end
#
# p return_my_local_var

=begin
  It's not returning because it's out of the scope. If I wanted to have access to local_var I will need to make it a
  global variable like @local_var
=end

# class DummyClass
#
#   @@local_var = 'this is my local var'
#
#   def return_my_local_var
#     @@local_var
#   end
#
# end
#
# return_something = DummyClass.new
# p return_something.return_my_local_var

=begin
  return the class variable.
=end

# class DummyClass
#
#   def initialize(str)
#     @str = str
#   end
#
#   def return_my_local_var
#     @str
#   end
#
# end
#
# whatever = DummyClass.new('this is my local var')
# p whatever.return_my_local_var


# class DummyClass
#
#   def initialize(str)
#     @str = str
#   end
#
#   def str=(value)
#     @str = value
#   end
#
#   def str
#     @str
#   end
#
# end
#
# write_in_english = DummyClass.new('testing')
# p write_in_english.str
#
# rewrite = DummyClass.new('Again')
# p rewrite.str = 'Joseph'


# class DummyClass
#
#   def initialize(str)
#     @@str = str
#   end
#
#   def str=(str)
#     @@str = str
#   end
#
#   def str
#     @@str
#   end
#
# end
#
#
# dummy_1 = DummyClass.new('Something')
# p dummy_1.str = 'Something else'
#
# dummy_2 = DummyClass.new('Arg')
# p dummy_2.str

$global_var = 'This is a global variable'

$global_var = 'this is my global var'

class DummyClass
  CONSTANT = 3.1416

  def return_my_global_var
    $global_var
  end

  def return_constant
    CONSTANT
  end

end

something = DummyClass.new
p something.return_my_global_var
p something.return_constant

