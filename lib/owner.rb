class Owner
  attr_accessor :pets

  def initialize(name)
    @name = name
    @pets = {fish: [], cats: [], dogs: []}
  end
end
