class MyCar

  attr_accessor :color, :year, :model, :current_speed

  def initialize(year, model, color)
    self.year = year
    self.model = model
    self.color = color
    self.current_speed = 0
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

  def gas_mileage(gallon, miles)
    puts ("#{miles * 1.0 / gallon } gallon of gas per mile ")
  end

  def to_s()
    "#{self.color} #{self.model} made in #{self.year} running at #{self.current_speed} mph"
  end
end

lumina = MyCar.new(1997, 'chevy lumina', 'white')
lumina.spray_paint('red')
puts lumina.year
lumina.gas_mileage(13, 200)
puts lumina