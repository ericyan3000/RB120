class Vehicle
  @@number_of_vehicles = 0

  def self.number_of_vehicles
    puts "This program has created #{@@number_of_vehicles} vehicles."
  end

  attr_accessor :color, :year, :model, :current_speed

  def initialize(year, model, color)
    self.year = year
    self.model = model
    self.color = color
    self.current_speed = 0
    @@number_of_vehicles += 1
  end

  def speed_up(number)
    @current_speed += number
    puts "You push the gas and accelerate #{number} mph."
  end

  def brake(number)
    @current_speed -= number
    puts "You push the brake and decelerate #{number} mph."
  end

  # def current_speed
  #   puts "You are now going #{@current_speed} mph."
  # end

  def shut_down
    @current_speed = 0
    puts "Let's park this bad boy!"
  end

  def spray_paint(color)
    self.color = color
    puts "Your new #{color} paint job looks great!"
  end

  def to_s()
    "#{self.color} #{self.model} made in #{self.year} running at #{self.current_speed} mph"
  end

  def age
    "Your #{self.model} is #{years_old} years old."
  end

  def self.gas_mileage(gallon, miles)
    puts ("%.2f gallon of gas per mile" % [miles*1.0/ gallon])
  end

  private

  def years_old
    Time.new().year - self.year
  end

end

module Towable
  def can_tow?(pounds)
    pounds < 2000 ? true : false
  end
end

class MyCar < Vehicle
  NUM_OF_DOORS = 4
end

class MyTruck < Vehicle
  include Towable
  NUM_OF_DOORS = 2
end

 lumina = MyCar.new(1997, 'chevy lumina', 'white')
 monster = MyTruck.new(2008, 'Toyota Pickup', 'grey')
lumina.spray_paint('red')
puts lumina.year
Vehicle.gas_mileage(13, 200)
puts monster.to_s
Vehicle.number_of_vehicles
 puts monster.can_tow?(3000)
 puts monster.age