module Transportation
  class Vehicle; end
  class Truck < Vehicle; end
  class Car < Vehicle; end
end

module Outter
  module GM
    class Truck; end
  end
end

class Truck; end

myTruck = Transportation::Truck.new
puts myTruck
GMTruck = Outter::GM::Truck.new
puts GMTruck
normalTruck = Truck.new
puts normalTruck