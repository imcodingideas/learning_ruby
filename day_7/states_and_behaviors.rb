#Class are properties and methods with different behaviors.

class RaceCar

  @@number_of_cars = 0

  def initialize(brand, model)
    #instance variables
    @brand = brand
    @model = model
    @@number_of_cars += 1
  end

  # behavior
  def accelerate
    puts 'Accelerating'
  end

  # Outside objects don't have permission to class methods.
  def self.increasing_speed
    puts 'Increasing Speed'
  end

  def self.number_of_cars
    @@number_of_cars
  end

  # behavior
  def stop
    puts 'Curbing'
  end
end

# RaceCar instances
speedy = RaceCar.new('Toyota', '1987')
bolt = RaceCar.new('Mercedez', '1997')
# instance method 'accelerate'
speedy.accelerate
bolt.accelerate

# Instance method 'stop'
speedy.stop
bolt.stop

# class method
RaceCar.increasing_speed

joseph = RaceCar.new('Jeep', '2001')
angelica = RaceCar.new('Civic', '2005')

p RaceCar.number_of_cars
