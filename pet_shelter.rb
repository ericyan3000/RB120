class Pet
  attr_reader :type, :name

  def initialize(type, name)
    @type = type
    @name = name
  end

  def to_s
    %(a #{self.type} named #{self.name})
  end
end

class Owner
  attr_reader :name, :pets

  def initialize(name, *pets)
    @name = name
    @pets = pets
  end

  def add_pet(pet)
    @pets << pet
  end

  def number_of_pets
    self.pets.size
  end
end

class Human < Owner

  def to_s() 
    %(#{self.name} has adopted the following pets:\n#{pets.join("\n")})
  end

end

class Shelter < Owner
  attr_reader :owners

  def initialize(name, *pets)
    super()
    @owners = []
  end
  
  def adopt(owner, pet)
    if self.pets.include?(pet) 
      @pets.remove_pet(pet)
      owner.add_pet(pet)
      @owners << owner unless @owners.include?(owner)
     else
      puts "#{pet} is not available to be adopted."
    end
  end

  def remove_pet(pet)
    @pets.delete(pet)
  end

  def print_adoptions
    owners.each do |owner|
      puts %(#{owner}\n\n)
    end
  end


end


butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')


phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')

shelter = Shelter.new('The Animal Shelter')
shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)
shelter.print_adoptions
puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."