class Owner
  attr_accessor :pets, :species

  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species
  end
end
