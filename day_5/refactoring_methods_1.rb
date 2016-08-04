=begin
Refactor this and the end should result should be a single method
with a line of code. Make it pass the test.
=end

def a
	true
end

def b
	false
end

def join
	a || b == b && b
end

def check?
	!!join ? 'true' : 'false'
end

#test
p check? == 'true'