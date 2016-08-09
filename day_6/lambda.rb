=begin
Create a Lambda showing the strings that have more than 4 letters. Make pass the tests.
=end

strings = ["ruby", "java", "c++", "javascript"]

char_length = lambda {|input| input.length > 4}

# Tests
p strings.select(&char_length).join(", ") == "javascript"