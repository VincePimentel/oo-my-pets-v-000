class Owner
  attr_accessor :name, :pets
  attr_reader   :species

  @@all = Array.new

  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @species = "human"
    @@all << self
  end

  # START OF CLASS METHODS

  def self.all
    @@all
  end

  def self.count
    self.all.size
  end

  # END OF CLASS METHODS

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

  def walk_dogs(mood = "happy")
    self.pets[:dogs].collect { |pet| pet.mood = mood }
  end

  def play_with_cats(mood = "happy")
    self.pets[:cats].collect { |pet| pet.mood = mood }
  end

  def feed_fish(mood = "happy")
    self.pets[:fishes].collect { |pet| pet.mood = mood }
  end

  def sell_pets
    self.pets.collect do |species, pets|
      pets.each { |pet| pet.mood = "nervous" }.clear
    end
  end

  def list_pets
    fish_count = self.pets[:fishes].size
    dog_count = self.pets[:dogs].size
    cat_count = self.pets[:cats].size
    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end
end
