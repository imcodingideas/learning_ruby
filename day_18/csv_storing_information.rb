require 'faker'
require 'csv'

class Person

  attr_accessor :first_name, :last_name, :email, :phone, :created_at

  def initialize(first_name, last_name, email, phone, created_at)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @phone = phone
    @created_at = created_at
  end

end

def create_person

  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  email = Faker::Internet.email
  phone = Faker::PhoneNumber.phone_number
  created_at = Time.now
  Person.new(first_name, last_name, email, phone, created_at)

end

def number_of_persons(number)

  array_persons = []
  (1..number).each { |i| array_persons << create_person }
  array_persons

end

people = number_of_persons(200)

class PersonWriter

  def initialize(file, array)
    @file = file
    @array = array
  end

  def create_csv
    CSV.open(@file, "wb") do |csv|
      @array.each do |person|
        csv << [person.first_name, person.last_name, person.email, person.phone, person.created_at]
      end
    end
  end

end

class ParseThePeople

  def initialize(person)
    @person = person
    @people = []
  end

  def people
    CSV.foreach(@person) do |row|
      @people << Person.new(row[0],row[1],row[2],row[3],row[4])
    end
    @people
  end

  def change_name(name)
    people[0].first_name = name
    PersonWriter.new(@person, people).create_csv
  end

end

person_writer = PersonWriter.new("people.csv", people)
person_writer.create_csv

parser = ParseThePeople.new('people.csv')
people = parser.people
parser.change_name('imcodingideas')