def canonical(letter)
  letter.split(//).sort!
end

def are_anagrams?(word_a, word_b)
  canonical(word_a) == canonical(word_b)
end

p are_anagrams?('omar', 'amor')
p are_anagrams?('omar', 'amor')

def anagrams_for(word, array)
  empty_array = []
  letter = word.split(//).sort
  array.select do |word|
    x = word.split(//).sort
    empty_array << word if x == letter
  end
  empty_array
end

p anagrams_for('omar', %w(amor ramo hola gerardo))