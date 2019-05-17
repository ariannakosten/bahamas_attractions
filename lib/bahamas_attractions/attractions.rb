class Attractions
  
  attr_accessor :name, :reviews, :catagories, :price, :description
  
  @@all = []
  
  def initialize(name=nil, reviews=nil, catagories=nil, price=nil, description=nil)
    @name = name
    @reviews = reviews
    @catagories = catagories
    @price = price
    @description = description
    @@all << self
  end
  
  def self.all
    @@all
  end

  def sort_by_price
    
  end
  
  def sort_by_catagories
  
 end

end