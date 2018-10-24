class Owner
  attr_accessor :pets
  attr_reader   :species

  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @species = Array.new
  end
end
