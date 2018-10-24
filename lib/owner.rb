class Owner
  attr_accessor #:pets

  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
  end
end
