class Attraction
  
  attr_accessor :name, :rating, :catagory, :price, :description, :url, :index
  
  @@all = []
  
  def initialize(name, url, index)
    @name, @url, @index = name, url, index
    @@all << self
  end
  
  #create method that searches all attractions and returns one
  
  def self.find_attraction(i)
    self.all.find{|att| att.index = i}
  end
  
  def self.all
    @@all
  end
  
  def self.print_all_attractions
    self.all.each do |att|
    puts "#{att.index}. #{att.name}".colorize(:light_blue)
    puts "-----------------------------------------------".colorize(:light_blue)
    end
  end
  
   def self.display_attraction(attraction)
    input = ""
      while input != "exit" do
        input = gets.strip.downcase
    puts "-------------------------------------------------".colorize(:red)
    puts "#{attraction.name.upcase}".colorize(:red)
    puts "-------------------------------------------------".colorize(:red)
    puts ""
    puts "-------------------------------------------------".colorize(:white)
    puts "Catagory:".colorize(:white) + "#{attraction.catagory}".colorize(:magenta)
    puts "-------------------------------------------------".colorize(:white)
    puts "Description:".colorize(:white)
    puts "#{attraction.description}".colorize(:magenta)
    puts "-------------------------------------------------".colorize(:white)
    puts "Rating:".colorize(:white) + "#{attraction.rating} out of 5 stars!".colorize(:magenta)
    puts "-------------------------------------------------".colorize(:white)
    puts "Price:".colorize(:white) + "#{attraction.price}".colorize(:magenta)      
    puts "-------------------------------------------------".colorize(:blue)
    puts ""
    puts "Want to see a different attraction? Type 'list' to view the attractions again.".colorize(:red) 
    puts "Otherwise type 'exit', to exit".colorize(:red)
    
    if input == "list"
      self.print_all_attractions
    elsif input != "exit"
      puts "Invalid action, please type 'list' to view all attractions or 'exit' to exit"
      end
    end
  end
  
end
    #ALTS
    #   puts "Want to see a different attraction? Enter 'Y' for yes or 'N' for no".colorize(:red) 
    # input = gets.strip.downcase
    # if input == "y"
    #   print_all_attractions
    # elsif input == "n"
    #   puts ""
    #   puts "Thanks for looking! Goodbye!".colorize(:red) 
    #   exit
    # else
    #   puts ""
    #   puts "Invalid action...reloading.".colorize(:red) 
    #   print_all_attractions
    # end
  