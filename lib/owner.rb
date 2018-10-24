class Owner
  attr_accessor :pets, :species

  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}

  end
end
