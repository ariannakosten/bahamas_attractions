class Attraction
  
  attr_accessor :name, :rating, :catagory, :price, :description, :url
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end

end