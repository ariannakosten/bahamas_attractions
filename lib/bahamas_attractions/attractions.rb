class Attraction
  
  attr_accessor :name, :rating, :catagory, :price, :description, :url, :index
  
  @@all = []
  
  def initialize(name, url, index)
    @name, @url, @index = name, url, index    
    @@all << self
  end
  
  #create method that searches all attractions and returns one
  
  def self.find_attraction(i)
    self.all.find{|att| att.index == i}
  end
  
  def self.all
    @@all
  end
  
  
end
  # def self.launch(attraction)
  #   launchy.open("www.tripadvisor.com#{attraction.url}")
  # end


  