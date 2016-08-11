class RaceCar

  attr_accessor :brand
  attr_reader :model
  attr_writer :color

  def initialize(brand, model, color)
    @brand = brand
    @model = model
    @color = color
  end

end

first_car = RaceCar.new("Mustang", "1997", "green")

# reading brand
p first_car.brand
# writing brand
p first_car.brand = "Ferrari"
# reading brand
p first_car.brand

# reading model
p first_car.model
# writing model
#p first_car.model = 1980

# writing color
p first_car.color = "Blue"
#p first_car.color

