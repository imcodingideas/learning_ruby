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