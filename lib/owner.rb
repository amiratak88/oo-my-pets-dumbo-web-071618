require_relative 'fish.rb'
require_relative 'dog.rb'
require_relative 'cat.rb'
require 'pry'




class Owner


  @@all = []

  attr_accessor :pets, :name
  attr_reader :species

  def initialize(species)

    @species = species
    @pets ={fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def self.all
      @@all
  end

  def self.reset_all
    @@all = []
  end

  def self.count
    @@all.count
  end

  def say_species
    "I am a #{@species}."
  end


  def buy_cat(name)
    @pets[:cats]<< Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs]<< Dog.new(name)
  end

  def buy_fish(name)
    @pets[:fishes]<< Fish.new(name)
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

def play_with_cats
  @pets[:cats].each do |cat|
    cat.mood = "happy"
  end
end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

      def sell_pets
        self.pets.each do |type, pets|
          @pets[type].each do |pet|



            pet.mood = "nervous"
          end
        @pets[type] = []
      end
end

def list_pets
  "I have #{self.pets[:fishes].length} fish, #{self.pets[:dogs].length} dog(s), and #{self.pets[:cats].length} cat(s)."
end

end
