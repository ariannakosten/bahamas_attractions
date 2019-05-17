class Attractions
  
  attr_accessor :name, :reviews, :catagories, :price
  
  @@all = []
  
  def initialize(name=nil, reviews=nil, catagories=nil, price=nil)
    @name = name
    @reviews = reviews
    @catagories = catagories
    @price = price
    @@all << self
  end
  
  def self.all
    @@all
  end
end