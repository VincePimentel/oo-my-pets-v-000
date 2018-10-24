class Owner
  attr_accessor :name, :pets
  attr_reader   :species

  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @species = "human"
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(name)
    fish = self.new(name)
    self.pets[:fishes] << name
  end
end
