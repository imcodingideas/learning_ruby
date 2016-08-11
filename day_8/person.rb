=begin
Person # name, which returns the full name of a person.
Person # information, which returns all information of the person.
=end

class Customer
  attr_accessor :first_name, :last_name, :email

  def initialize(first_name, last_name, email)
    @first_name = first_name
    @last_name = last_name
    @email = email
  end

  def name
    "#{first_name} #{last_name}"
  end

  def information
    puts "Name: #{name}"
    puts "Email: #{email}"
  end

end

person = Customer.new('Joseph', 'Chambers', 'joseph@michael-chambers.com')
puts person.name
# => Joseph Chambers
person.information
# => Name: Joseph Chambers
# => Email: joseph@michael-chambers.com