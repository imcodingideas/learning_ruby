# Refactor so that only you stay a stylish line
def dummy_encrypt(string)
	swapped_word = string.reverse.swapcase.gsub(/[aeio]/,"*")
end

# Refactor the method in three new methods to make the code more understandable Lee and the method comprises making and result returns
def max_letter_frequency_per_word(sentence)
	numbers_larger_than(letter_per_word(words_longer_than(sentence, 3), "e"))
end

def words_longer_than(sentence, num)
	sentence.split.select{|word| word.length > num}
end

def letter_per_word(array, letter)
	array.map{|w| w.count(letter)}
end

def numbers_larger_than(num_array)
	num_array.max
end


# These are tests that must not change before and after modifying the above methods these lines should print "true"
puts dummy_encrypt("EsteEsMiPassword") == "DROWSSApImS*ETS*"

puts max_letter_frequency_per_word("entero entrar envase enviar enzima equino equipo erario erguir eriaza eriazo erigir eringe eficientemente electroencefalografía") == 5