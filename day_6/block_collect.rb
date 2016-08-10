=begin
Make pass the test. Do not remove any part of the code and do not modify the test.
=end

def numbers(list)
  list.collect do |num|
    num
  end
end

#test
list = [35, 44, 78, 34, 56]
p numbers(list) == [35, 44, 78, 34, 56]