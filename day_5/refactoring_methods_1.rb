=begin
Refactor this and the end should result should be a single method
with a line of code. Make it pass the test.
=end

def check?
	!!true || false == b && b ? 'true' : 'false'
end

#test
p check? == 'true'