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

  def buy_fish(fish)
    fish = self.new(fish)
    self.pets[:fishes] = fish
  end
end
