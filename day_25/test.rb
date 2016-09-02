# Credit Card Class

class CreditCard
  attr_accessor :name, :number, :expiration, :cvc, :status

  def initialize(name, number, expiration, cvc, status)
    @name = name
    @number = number
    @expiration = expiration
    @cvc = cvc
    @status = status
  end

end

# Five CreditCard instances

cc_amex = CreditCard.new('Amex', 2345673444, '12/15', 2345, [234, 567, 456, 567, 344])
cc_scotiabank = CreditCard.new('ScotiaBank', 2345673744, '12/16', 2845, [234, 345, 456, 567, 344])
cc_bancomer = CreditCard.new('Bancomer', 2345673444, '12/15', 2645, [234, 345, 456, 567, 344])
cc_serfin = CreditCard.new('Serfin', 2345473454, '12/20', 1345, [234, 345, 456, 567, 344])
cc_bancoppel = CreditCard.new('BanCoppel', 2345373464, '12/18', 2445, [567, 345, 456, 567, 344])

# Array With five objects credit card

cards = []
cards << cc_amex
cards << cc_scotiabank
cards << cc_bancomer
cards << cc_serfin
cards << cc_bancoppel

# Method to display data card

def show(array)
  print "|\t Name  \t|\t Number \t|\tExpiration\t|\tCVC  \t|\t     Status        \t|\n"
  print "-----------------------------------------------------------------------------------------------------------------\n"

  array.each do |card|
    if card.name.length > 6
      print "|#{card.name}\t|\t#{card.number}\t|\t #{card.expiration}  \t|\t#{card.cvc}\t|   #{card.status}   |\n"
    else
      print "|#{card.name}\t\t|\t#{card.number}\t|\t #{card.expiration}  \t|\t#{card.cvc}\t|   #{card.status}   |\n"
    end
  end

  print "-----------------------------------------------------------------------------------------------------------------\n"
end

# Tests

cards.each do |card|
  puts "#{card.name} responds to:"
  puts "\tName: #{card.respond_to?(:name) == true}"
  puts "\tNumber: #{card.respond_to?(:number) == true}"
  puts "\tExpiration: #{card.respond_to?(:expiration) == true}"
  puts "\tcvc: #{card.respond_to?(:cvc) == true}"
  puts "\tGet status: #{card.respond_to?(:status) == true}"
  puts "\tSet status: #{card.respond_to?(:status=) == true}"
  puts "\n\n"
end

show(cards)


#Athlete class
class Athlete

# method to validate time

# method for exercise

# method for speed athlete

end

#Runner class

#Swimmer class

#Cyclist class


#tests

#instances of athletes with distance in meters
runner = Runner.new()
swimmer = Swimmer.new(50, 10)
cyclist = Cyclist.new(70, 27)
athletes = [runner, swimmer, cyclist]

athletes.each do |athlete|
# What kind of athlete is it?
  puts "#{athlete.class} responds to:"
  puts "\tAthlete speed: #{athlete.respond_to?(:speed) == true}"
  puts "\tGet Athlete time: #{athlete.respond_to?(:total_time) == true}"
  puts "\tSet Athlete time: #{athlete.respond_to?(:total_time=) == true}"
  puts "\tSpeed record: #{athlete.respond_to?(:speed_record) == true}"
  puts "\tGet Distance: #{athlete.respond_to?(:total_distance) == true}"
  puts "\tSet Distance: #{athlete.respond_to?(:total_distance=) == true}"
  puts "\trun method: #{athlete.respond_to?(:run) == true}" if athlete == runner
  puts "\tswim method: #{athlete.respond_to?(:swim) == true}" if athlete == swimmer
  puts "\tride_bike method: #{athlete.respond_to?(:ride_bike) == true}" if athlete == cyclist
  puts "\n\n"
end

#test for runner

#test para runner con distancia = 0
p runner.run == "Ran 0 meters, time: 0 seconds, speed: 0 m/s"

#test for runner during exercise, increases distance = 20 meters and time = 7 seconds
runner.new_workout(20, 7)

#test for runner with distance = 20 meters and time = 7 seconds
p runner.run == "Ran 20 meters, time: 7 seconds, speed: 2.86 m/s"

#test for swimmer with distance = 50
p swimmer.swim == "Swam 50 meters, time: 10 seconds, speed: 5.0 m/s"