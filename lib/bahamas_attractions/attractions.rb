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
  
  def self.print_all_attractions
    self.all.each do |att|
    puts "#{att.index}. #{att.name}".colorize(:light_blue)
    puts "---------------------------------------------------------------------------".colorize(:light_blue)
    end
  end
  
  def self.display_attraction(attraction)
    puts "--------------------------------------------------------------------------------".colorize(:white)
    puts "                       ~#{attraction.name.upcase}~".colorize(:magenta)
    puts "--------------------------------------------------------------------------------".colorize(:white)
    puts "Catagory: ".colorize(:white) + "#{attraction.catagory}".colorize(:magenta)
    puts "--------------------------------------------------------------------------------".colorize(:white)
    puts "Description:".colorize(:white)
    puts "#{attraction.description}".colorize(:magenta)
    puts "--------------------------------------------------------------------------------".colorize(:white)
    puts "Rating: ".colorize(:white) + "#{attraction.rating} out of 5 stars!".colorize(:magenta)
    puts "--------------------------------------------------------------------------------".colorize(:white)
    puts "Price: ".colorize(:white) + "#{attraction.price}".colorize(:magenta)      
    puts "--------------------------------------------------------------------------------".colorize(:white)
    puts ""
  end
  
end

  