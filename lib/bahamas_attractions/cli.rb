class CLI

  def run
      welcome
      Scraper.scrape_all_attractions
      print_all_attractions
      start_selection
  end
  
  def welcome
    puts ""
    puts "             ´¨`*•.¸¸.•*´¨`*•.•*´¨`*•.¸¸.•*´¨´¨`*•.¸¸.•*´¨`".colorize(:light_blue)
    puts ""
    puts "                          BAHAMAS ATTRACTIONS!"
    puts ""
    puts "             ´¨`*•.¸¸.•*´¨`*•.•*´¨`*•.¸¸.•*´¨´¨`*•.¸¸.•*´¨`".colorize(:light_blue)
    puts ""
    puts "               Welcome to the Top Attractions in the Bahamas!"
    puts ""
             
    puts ""
    puts "---------------------------------------------------------------------------".colorize(:light_blue)
  end
  
  def start_selection
    input = ""
      while input != "exit" do
        input = gets.strip.downcase       
                                           
      if (1..30).include?(input.to_i)                           
        
        attraction = Attraction.find_attraction(input.to_i)
        Scraper.single_attraction_scraper(attraction)
        display_attraction(attraction)
        
        # puts "Want to see the attraction in your browser? Type 'view' to view."
        puts ""
        puts "Want to see a different attraction? Type 'list' to view the attractions again.".colorize(:light_magenta) 
        puts ""
        puts "Otherwise type 'exit', to exit".colorize(:light_magenta)
        puts ""
      # elsif input == "view"
      #   Attraction.launch(attraction)
      elsif input == "list"
        puts ""
        puts "---------------------------------------------------------------------------".colorize(:blue)
        puts "                      TOP ATTRACTIONS IN THE BAHAMAS!"
        puts "---------------------------------------------------------------------------".colorize(:blue)
        puts "  Enter the number located next to the attraction you would like details on: "
        puts ""
        puts "          Otherwise, if you'd like to exit just type 'exit'."
        puts "---------------------------------------------------------------------------".colorize(:blue)
       print_all_attractions
      elsif input != "exit"
        puts "-------------------------------------------------------------------------------"
        puts "Oh no, it looks like that is not a valid response, please enter a valid option.".colorize(:red)
        puts ""
        puts "Please type 'list' to see the entire list of attractions again.".colorize(:red)
        puts ""
        puts "Otherwise, if you'd like to exit just type 'exit'.".colorize(:red)
        puts "-------------------------------------------------------------------------------"
      end
    end    
  end
  
   def print_all_attractions
    Attraction.all.each do |att|
      puts "#{att.index}. #{att.name}".colorize(:light_blue)
      puts "---------------------------------------------------------------------------".colorize(:light_blue)
    end
    puts "Which attraction would you like to see details on first?"
    puts ""
    puts "  Please enter the number located next to the attraction you are interested in."
    puts ""
    puts "                     Otherwise type 'exit, to exit."
  end
  
  def display_attraction(attraction)
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
    