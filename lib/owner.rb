class Owner
  # getter, can read but not write
  attr_reader :species
  # getter & setter, can read & write
  attr_accessor :name, :pets
  @@all = []

  def initialize(species)
    @species = species
    @name = name
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end

  # can say its species
  def say_species
    "I am a #{self.species}."
  end

  # can buy a fish that is an instance of the Fish class, knows about its fishes
  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end

  # can buy a cat that is an instance of the Cat class, knows about its cats
  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end

  # can buy a dog that is an instance of the Dog class, knows about its dogs
  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end

  # walks the dogs which makes the dogs' moods happy
  def walk_dogs
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  # plays with the cats which makes the cats moods happy
  def play_with_cats
    pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  # feeds the fishes which makes the fishes' moods happy
  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  # can sell all its pets, which make them nervous
  def sell_pets
    pets.each do |type, all_type|
      all_type.each do |pet|
        pet.mood = "nervous"
      end
    end
    pets.clear
  end

  # can list off its pets
  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end

  # CLASS METHODS
  def self.all
    @@all
  end

  # count returns the number of owners that have been created
  def self.count
    self.all.count
  end

  # reset the owners that have been created
  def self.reset_all
    self.all.clear
  end
end # end of class
