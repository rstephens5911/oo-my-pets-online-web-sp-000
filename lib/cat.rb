class Cat
  attr_accessor :owner, :mood
  attr_reader :name

  @@cats = []

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    save
  end

  def save
    @@cats << self
  end

<<<<<<< HEAD
  def self.all
    @@cats
  end

=======
>>>>>>> d6eab4cf24db8d5846f2a897a6370e661b70ff65
end
