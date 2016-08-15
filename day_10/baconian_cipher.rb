=begin
Bacon code is a method to hide messages.
Each letter of the message is replaced by a group of five letters 'A' or 'B' according to the following table.
=end

def baconian_cipher (code)
  array = code.gsub("A","0").gsub("B","1").scan(/.{5}/)
  array.map do |word|
    (word.to_i(2) + (word.to_i(2) < 9 ? 97 : word.to_i(2) < 19 ? 98 : 99)).chr
  end.join
end

# Test
p baconian_cipher("BAABAAABAAAABAABAAABABBBAAABAABAAAAABBABAAAAAABABAAAAAABAAABAAABAABAAAABBAAAAABAABBAB") == "teesperoalascinco"
p baconian_cipher("ABABAAAAAAAAABAABABAAAAAABAABBAABAAAABAABAAABAAABBABBABBAAABBAABABAAAAAABAABAAAB") == "laclaveesdostres"