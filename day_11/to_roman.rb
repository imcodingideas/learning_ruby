def to_roman(n)
	sm = ["I", "X", "C", "M"]
	med = ["V", "L", "D"]
	big = ["X", "C", "M"]

	holder = ""
	i = n.to_s.length
	n.to_s.split("").map{|elem|elem.to_i}.each do |dig|
		i -= 1
		if dig == 9
			holder << sm[i] + big[i]
		elsif dig < 9 && dig > 4
			holder << med[i]
			(3 - (8 - dig)).times{ holder << sm[i]}
		elsif dig == 4
			holder << sm[i] + med[i]
		else
			dig.times{ holder << sm[i]}
		end
	end
	holder
end

a = to_roman(1) == "I"
b = to_roman(3) == "III"
c = to_roman(4) == "IV"
d = to_roman(9) == "IX"
e = to_roman(13) == "XIII"
f = to_roman(14) == "XIV"
g = to_roman(944) == "CMXLIV"
h = to_roman(1453) == "MCDLIII"
i = to_roman(1646) == "MDCXLVI"

puts "|valid |input | expected | actual"
puts "|------|------|----------|-------"
puts "| #{a} |1     | I        | #{to_roman(1)}"
puts "| #{b} |3     | III      | #{to_roman(3)}"
puts "| #{c} |4     | IV       | #{to_roman(4)}"
puts "| #{d} |9     | IX       | #{to_roman(9)}"
puts "| #{e} |13    | XIII     | #{to_roman(13)}"
puts "| #{f} |14    | XIV      | #{to_roman(14)}"
puts "| #{g} |944   | CMXLIV   | #{to_roman(944)}"
puts "| #{h} |1453  | MCDLIII  | #{to_roman(1453)}"
puts "| #{i} |1646  | MDCXLVI  | #{to_roman(1646)}"