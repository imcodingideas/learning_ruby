=begin
Script: Single word converter to Pig Latin
GET a word from user input
IF the word starts with a vowel, add "way" to the end
ELSE replace the word with its pig latin equivalent
  GET all of the consonants before the first vowel in the word
  SET the consonants at the end of the word and add "ay"
ENDIF
RETURN the pig-latin word

=end

def pig_word
  input = ARGV
  pig_latin = Array.new

  input.each do |word|
    if word.split(/[aeiouAEIOU].*/) == []
      pig_latin.push(word + 'way')
    else
      n = 0
      n += 1 while (word[n].count "aeiouAEIOU") != 1
      pig_latin.push(word[n..word.length-1] + word.split(/[aeiouAEIOU].*/).first + "ay")
    end
  end

  pig_latin.join(' ')
end

# Tested with running:
# ruby pig_latin.rb pig banana trash apple elephant egg duck
p pig_word == "igpay ananabay ashtray appleway elephantway eggway uckday"
p pig_word


# p pig_word("egg") == "eggway"
# p pig_word("duck") === "uckday"
# p pig_word("banana") == "ananabay"
# p pig_word("I") == "Iway"
# p pig_word("trash") == "ashtray"


=begin
Script: Pig Senetence converter to Pig Latin
GET a sentence from user input
Create placeholder pig_latin
Split the words and interate over each
Call the Pig Word method and add to pig latin and
add seperation by space
RETURN the pig-latin sentence, and strip extra
space at the end
=end

#
# def pig_sentence(string)
#   pig_latin = ""
#   string.split().each do |word|
#     pig_latin += pig_word(word).downcase + " "
#   end
#   pig_latin.strip!
# end
#
# p pig_sentence("This is a big fat pig egg who works at mcdonalds")