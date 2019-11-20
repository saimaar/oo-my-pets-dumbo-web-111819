require 'pry'

class Owner
  attr_reader :species, :name
  @@all = []
  @@reset_all
  def initialize(name)
    @name = name 
    @species = "human"
    @@all << self
  end 
  
  def say_species 
     "I am a #{@species}."
  end 
  
  def self.all
    @@all
  end 
  
  def self.count
    @@all.length
  end 
  
  def self.reset_all
    @@all.clear
  end 
  
  def cats 
    Cat.all.select{|cat|
    cat.owner == self 
    }
  end 
  
  
  def dogs 
    Dog.all.select{|dog|
    dog.owner == self 
    # binding.pry
    }
  end
  
  def buy_cat()
    Cat.all.find
    binding.pry
  
  end 
end

#billy.owner will give us all the cats the belongs to owner