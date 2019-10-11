class MyCar
  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
  end

  attr_accessor :year, :color, :model, :speed

  def speedUp
    self.speed = self.speed + 1
  end
  
  def break
    self.speed = self.speed - 1
  end

  def shutOff
    self.speed = 0
  end

  def viewYear
    self.year
  end

  def spray_paint(color)
    self.color = color
  end
end

car = MyCar.new(2018, "black", "Vovo")

car.speedUp
car.speedUp
car.speedUp
puts car.speed
car.break
puts car.speed
car.shutOff
puts car.speed
puts car.viewYear
car.spray_paint("red")
puts car.color