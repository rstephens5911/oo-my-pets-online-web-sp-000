class Owner
  attr_reader :name, :species

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def say_species
    "I am a #{@species}."
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    @@all.clear
  end

# Owner instance methods below

  def cats
    Cat.all.select { |cat| cat.owner == self}
  end

  def dogs
    Dog.all.select { |dog| dog.owner == self}
  end

  def buy_cat(name)
    new_cat = Cat.new(name, self)
    cats
  end

  def buy_dog(name)
    new_dog = Dog.new(name, self)
    dogs
  end
<<<<<<< HEAD
=======

  def walk_dogs
    Dog.all.select { |dog| dog.mood = "happy" }
  end

  def feed_cats
    Cat.all.select { |cat| cat.mood = "happy" }
  end

  def sell_pets
    @@all.clear
    Cat.all.select{ |cat| cat.mood = "nervous" }
    Cat.all.select{ |cat| cat.owner = nil }

    Dog.all.select{ |dog| dog.mood = "nervous" }
    Dog.all.select{ |dog| dog.owner = nil }
  end

  def list_pets
    "I have #{Dog.count} dog(s), and #{Cat.count}, cat(s)."
  end


>>>>>>> d6eab4cf24db8d5846f2a897a6370e661b70ff65

  def walk_dogs
    Dog.all.select { |dog| dog.mood = "happy" }
  end

  def feed_cats
    Cat.all.select { |cat| cat.mood = "happy" }
  end

  def sell_pets
    @@all.clear
    Cat.all.select{ |cat| cat.mood = "nervous" }
    Cat.all.select{ |cat| cat.owner = nil }

    Dog.all.select{ |dog| dog.mood = "nervous" }
    Dog.all.select{ |dog| dog.owner = nil }
  end

  def list_pets
    "I have #{self.dogs.size} dog(s), and #{self.cats.size} cat(s)."
  end

end
