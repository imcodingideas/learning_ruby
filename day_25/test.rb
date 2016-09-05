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
  attr_reader :speed, :speed_record, :run, :total_distance
  attr_writer :total_time, :total_distance, :time

  def initialize
    @time = 0
    @total_time = 0
    @total_distance = 0
    @speed_record
    total_time
  end

  def total_time
    @speed_record = 0 if @time == 0
  end

  def new_workout(distance, time)
    @total_distance = distance
    @time = time
    speed
  end

  def speed
    p @total_distance
    p @time
    @speed_record = (@total_distance.to_f/@time.to_f).round(2)
  end

end


#Runner class
class Runner < Athlete

  def innitialize(distance = 0, time = 0)
    @total_distance = distance
    @time = time
  end

  def run
    p "Ran #{@total_distance} meters, time: #{@time} seconds, speed: #{speed_record} m/s"
  end

end

#Swimmer class
class Swimmer < Athlete

  def initialize(distance, time)
    @total_distance = distance
    @time = time
    speed
  end

  def swim
    p "Swum #{@total_distance} meters, time: #{@time} seconds, speed: #{@speed_record} m/s"
  end

end

#Cyclist class
class Cyclist < Athlete

  def initialize(distance, time)
    @total_distance = distance
    @time = time
    speed
  end

  def ride_bike
    p "Rode #{@total_distance} meters, time: #{@time} seconds, speed: #{@speed_record} m/s"
  end
end


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

#test for runner for distance = 0
p runner.run == 'Ran 0 meters, time: 0 seconds, speed: 0 m/s'

#test for runner during exercise, increases distance = 20 meters and time = 7 seconds
runner.new_workout(20, 7)

#test for runner with distance = 20 meters and time = 7 seconds
p runner.run == 'Ran 20 meters, time: 7 seconds, speed: 2.86 m/s'

#test for swimmer with distance = 50
p swimmer.swim == 'Swum 50 meters, time: 10 seconds, speed: 5.0 m/s'


#RaceCar class
class RaceCar
  attr_accessor :name, :avg_speed, :lv

  def initialize(name, lap_time1, lap_time2, lap_time3, lap_time4, lap_time5)
    @name = name
    @lap_time1 = lap_time1
    @lap_time2 = lap_time2
    @lap_time3 = lap_time3
    @lap_time4 = lap_time4
    @lap_time5 = lap_time5
    average_speed
    @avg_speed
    level
    @lv
  end

  # Method for average speed
  def average_speed
    @avg_speed = (((100/@lap_time1) + (100/@lap_time2) + (100/@lap_time3) + (100/@lap_time4) + (100/@lap_time5))/5).round(2)
  end

  # Method that shows the level of each race car
  def level

    case @avg_speed
      when 0..9
        @lv = 'Beginner'
      when 10..14.9
        @lv = 'Normal'
      when 15..20
        @lv = 'Medium'
      when 20.1..30
        @lv = 'Advanced'
    end

  end


end

#Team class
class Team
  attr_accessor :race_cars

  def initialize(race_car_instances)
    @race_cars = race_car_instances
  end

  #method to add new race car
  def add_race_car(race_car_instance)
    race_cars << race_car_instance
  end

  #method for calculating average speed of the computer
  def average_speed_of_team
    speeds = []

    @race_cars.each { |car| speeds << car.avg_speed }

    speeds.inject(:+)/speeds.length
  end

end

# method to search for race car
def search(car_name, team)
  team.race_cars.each { |car| return "#{car_name} is a racer" if car.name == car_name }
end

def table(array)
  print "|  Name   \t|  Level \t|\n"
  print "---------------------------------\n"

  array.each do |car|
    if car.name.length > 6
      print "|  #{car.name}\t|  #{car.lv}\t|\n"
    else
      print "|  #{car.name} \t|  #{car.lv}\t|\n"
    end
  end

end

# Racecar instances
force = RaceCar.new('Force', 9, 8 , 7.5 , 9.1, 8)
power = RaceCar.new('Power', 10, 9, 8, 7.5, 10.2)
passwater = RaceCar.new('Passwater', 9, 8, 5, 9, 6)
banjo = RaceCar.new('Banjo', 3, 5, 10, 11, 15)
duck = RaceCar.new('Duck', 4, 4 , 4 , 4, 8)
cars = [force, power, passwater, banjo, duck]

# Tests
p "Force: #{force.average_speed} m/s"
p "Power: #{power.average_speed} m/s"
p "Passwater: #{passwater.average_speed} m/s"
p "Banjo: #{banjo.average_speed} m/s"
p "Duck: #{duck.average_speed} m/s"

# Create a team of cars
team = [force, power, passwater, banjo, duck]
team_one = Team.new(team)

# Test to see if racecar is on team_one
p search('Power', team_one) == 'Power is a racer'

#calculate average speed of team
p team_one.average_speed_of_team

# Method to display name and level race car
table(cars)