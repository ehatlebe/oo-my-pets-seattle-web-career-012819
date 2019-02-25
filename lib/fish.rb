class Fish
  attr_reader :species, :name
  attr_accessor :mood

  def initialize(name)
    @species = "fish"
    @name = name
    @mood = "nervous"
  end
end # end of class
