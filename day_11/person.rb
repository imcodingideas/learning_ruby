lass PERSON
attr_accessor :name, :age

LIFE_STAGE = {childhood: 12, teenager: 19, adult: 50}
LEGAL_AGE = 18

def initialize (name, age)
	@name = name
	@age = age
end

def life_stage
	if @age < LIFE_STAGE[:childhood]
		:childhood
	elsif(@age < LIFE_STAGE[:teenager])
		:teenager
	elsif(@age < LIFE_STAGE[:adult])
		:adult
	else
		:elder
	end
end

def legal
	@age >= LEGAL_AGE
end
end


# Tests

fernando = PERSON.new("Fernando", 5)
juan = PERSON.new("Juan", 45)
laura = PERSON.new("Laura", 87)
andrea = PERSON.new("Andrea", 13)

puts fernando.legal == false
puts juan.legal == true
puts laura.legal == true
puts andrea.legal == false

puts fernando.life_stage == :childhood
puts juan.life_stage == :adult
puts laura.life_stage == :elder
puts andrea.life_stage == :teenager

puts laura.age == 87
laura.name = "Ximena"
puts laura.name == "Ximena"