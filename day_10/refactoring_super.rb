=begin
Refactor the code. Check the documentation of heritage and super. Make pass the tests.
=end

class A
  def b(a)
    'A.b'
  end
end

class B < A
  def b(a)
    a == 5 ? 'B.b' : super
  end
end

b = B.new

# Test
p b.b(5) == "B.b"
p b.b(10) == "A.b"