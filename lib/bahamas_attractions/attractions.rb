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
    puts "--------------------------------------------------------------------------------"
    puts "Attraction:" + "  #{attraction.name.upcase}".colorize(:light_magenta)
    puts "--------------------------------------------------------------------------------"
    puts "Catagory: " + "#{attraction.catagory}".colorize(:light_magenta)
    puts "--------------------------------------------------------------------------------"
    puts "Description:"
    puts "#{attraction.description}".colorize(:light_magenta)
    puts "--------------------------------------------------------------------------------"
    puts "Rating: " + "#{attraction.rating} out of 5 stars!".colorize(:light_magenta)
    puts "--------------------------------------------------------------------------------"
    puts "Price: " + "#{attraction.price}".colorize(:light_magenta)      
    puts "--------------------------------------------------------------------------------"
    puts ""
  end
end
  # def self.launch(attraction)
  #   launchy.open("www.tripadvisor.com#{attraction.url}")
  # end


  