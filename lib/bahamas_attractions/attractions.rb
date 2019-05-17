class Attraction
  
  attr_accessor :name, :reviews, :catagories, :price, :description, :url
  
  @@all = []
  
  def initialize(name)
    @name = name
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