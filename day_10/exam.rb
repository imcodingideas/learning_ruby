=begin
Create the method vowels that receives a list of words words and removes the vowels of each string.
Make pass the corresponding test.
=end

def vowels(arr)
  removed = []
  arr.select { |letter| removed.push(letter.gsub(/[aeiou]/i, '')) }
  removed
end

=begin
Given two numbers, which can be positive and negative, is the sum of all the numbers between them, including those numbers too.
If the two numbers are equal, returns one of the two.
=end

def get_sum(a, b)
  (b < a) ? a : (a..b).to_a.inject(:+)
end

# =begin
# Create a method that receives a sentence and return one string pointing out the number of words and characters it contains,
# without blanks, your method must pass the following tests:
# =end

def char_word_counter(sentence)
  words_array = sentence.split(' ')
  how_many_words = words_array.length
  how_many_chars = sentence.gsub(/\s+/, "").length

  "This sentence has #{how_many_words} words & #{how_many_chars} characters"
end

=begin
Now we will take the hashes as an organizing tool to distinguish food by food group. For this you must create a method that takes as a parameter
string containing a meal, and look at the next hash, returning her key as a return value, if you do not find the food must return "food not found".
=end

def food_group(str)
  food_groups = {
      "grain" => ['Rice', 'Trigo', 'Avena', 'Barley', 'Flour'],
      "vegetable" => ['Carrot', 'corn' 'Corn', 'Pumpkin', 'Papa'],
      "fruit" => ['Apple', 'Mango', 'Strawberry', 'Peaches', 'Pineapple'],
      "meat" => ['Beef', 'Chicken', 'Salmon', 'Fish', 'Pig'],
      "dairy" => ['Milk', 'Yogurt', 'Cheese', 'Cream']
  }

  food_groups.each do |k,array|
    array.each { |food| return k if food == str }
  end

  return 'food not found'
end

puts "**** Die done ****"
class Die
  def initialize(number_of_sides)
    @number_of_sides = number_of_sides
  end

  def generate_die_roll
    rand(@number_of_sides) + 1
  end

  def roll(num=1)
    roll_arr = []
    num.times { roll_arr << generate_die_roll }
    total = 0
    roll_arr.each do |roll|
      new_total = total + roll
      total = new_total
    end
    (@number_of_sides <= 1) ? "Please choose a number larger than 1." : "You've rolled a #{total}"
  end
end

die1 = Die.new(6)
die2 = Die.new(8)
die3 = Die.new(1)

p die1.roll
p die2.roll
p die3.roll

class MyCar
  attr_accessor :speed

  @@current_speed = 0

  def initialize(speed)
    @speed = speed
  end

  def speed_up(speed)
    @@current_speed += speed
    "You push the gas and accelerate #{speed} kph."
  end

  def current_speed
    "You are now going #{@@current_speed} kph."
  end

  def brake(speed)
    @@current_speed -= speed
    "You push the brake and decelerate #{speed} kph."
  end

  def shut_down
    "Let's shut down to 0!"
  end
end

# RaceCar instances
demo_car = MyCar.new(0)

class Playlist
  attr_accessor :name, :songs
  attr_reader :current, :next_song

  def initialize(name, songs)
    @name = name
    @songs = songs
    @current = @songs[0]
  end

  def number_of_songs
    @songs.count
  end

  def add_song(title)
    @songs << title
  end

  def next_song
    @songs.each_with_index do |song, index|
      if song == @songs.last
        return @current = @songs.first
      elsif song == @current
        return @current = @songs[index + 1]
      end
    end
  end
end

puts "**** vowels done ****"
p vowels(["banana", "carrot", "pineapple", "strawberry"]) == ["bnn", "crrt", "pnppl", "strwbrry"]

puts "**** get_sum done ****"
p get_sum(1, 0) == 1
p get_sum(1, 2) == 3
p get_sum(0, 1) == 1
p get_sum(1, 1) == 1
p get_sum(-1, 0) == -1
p get_sum(-1, 2) == 2

puts "*** char_word_counter done ****"
p char_word_counter("This is a sentence") == "This sentence has 4 words & 15 characters"
p char_word_counter("This easy") == "This sentence has 2 words & 8 characters"
p char_word_counter("This is a very complex line of code to test our program") == "This sentence has 12 words & 44 characters"
p char_word_counter("And when she needs a shelter from reality she takes a dip in my daydreams") == "This sentence has 15 words & 59 characters"

puts "*** food_group done ***"
p food_group('Cream') == "dairy"
p food_group('Beef') == "meat"
p food_group('Pineapple') == "fruit"
p food_group('Cane') == "food not found"

puts "**** MyCar done ****"
p demo_car.speed_up(20) == "You push the gas and accelerate 20 kph."
p demo_car.current_speed == "You are now going 20 kph."
p demo_car.speed_up(20) == "You push the gas and accelerate 20 kph."
p demo_car.current_speed == "You are now going 40 kph."
p demo_car.brake(20) == "You push the brake and decelerate 20 kph."
p demo_car.current_speed == "You are now going 20 kph."
p demo_car.brake(20) == "You push the brake and decelerate 20 kph."
p demo_car.current_speed == "You are now going 0 kph."
p demo_car.shut_down == "Let's shut down to 0!"
p demo_car.current_speed == "You are now going 0 kph."

puts "**** Playlist Done ****"
my_playlist = Playlist.new("Cool Songs", ["Bloodwork", "Time", "All I Need", "The End"])
p my_playlist.name == "Cool Songs"
p my_playlist.number_of_songs == 4
p my_playlist.add_song("Not Enough")
p my_playlist.number_of_songs == 5
p my_playlist.current == "Bloodwork"
p my_playlist.next_song == "Time"