class Attractions
  
  attr_accessor :name, :reviews, :catagories
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
end