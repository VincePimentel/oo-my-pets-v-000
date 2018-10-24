class Owner
  attr_accessor :name, :pets
  attr_reader   :species

  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @species = "human"
  end

  def self.all
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(fish)
    fish = Fish.new(fish)
    self.pets[:fishes] << fish
  end

  def buy_cat(cat)
    cat = Cat.new(cat)
    self.pets[:cats] << cat
  end

  def buy_dog(dog)
    dog = Dog.new(dog)
    self.pets[:dogs] << dog
  end

  #

  def list_pets
    fish_count = self.pets[:fishes].count
    cat_count = self.pets[:cats].count
    dog_count =self.pets[:dogs].count
    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end
end
