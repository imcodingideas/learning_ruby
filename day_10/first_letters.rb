=begin
Create the method first_lettersreceives as a parameter and returns a sentence within an array the
first letters of each word of the sentence.
=end

def first_letters(str)
  str.split.map { |word| word.chars.first }
end

# Test
p first_letters("Today is Wednesday and sunny") == ["T", "i", "W", "a", "s"]
p first_letters("You have eight padlocks") == ["Y", "h", "e", "p"]