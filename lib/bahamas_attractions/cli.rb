class CLI

  def run
      welcome
      Scraper.scrape_all_attractions
      Attraction.print_all_attractions
      start_selection
  end
  
  def welcome
    puts ""
    puts "             ´¨`*•.¸¸.•*´¨`*•.•*´¨`*•.¸¸.•*´¨´¨`*•.¸¸.•*´¨`".colorize(:light_blue)
    puts ""
    puts "                          BAHAMAS ATTRACTIONS!".colorize(:light_blue)
    puts ""
    puts "             ´¨`*•.¸¸.•*´¨`*•.•*´¨`*•.¸¸.•*´¨´¨`*•.¸¸.•*´¨`".colorize(:light_blue)
    puts ""
    puts "               Welcome to the Top Attractions in the Bahamas!".colorize(:blue)
    puts ""
    puts "          Which attraction would you like to see details on first?".colorize(:blue)
    puts ""
    puts "  Please enter the number located next to the attraction you are interested in.".colorize(:blue)
    puts ""
    puts "                     Otherwise type 'exit, to exit.".colorize(:blue)
    puts ""
    puts "---------------------------------------------------------------------------".colorize(:light_blue)
  end
  
  def start_selection
    input = ""
      while input != "exit" do
        input = gets.strip.downcase       
                                                #NOT PUTTING OUT THE RIGHT NUMBER WITH ATTRACTION
      if (1..30).include?(input.to_i)                           
        
        attraction = Attraction.find_attraction(input.to_i)
        Scraper.single_attraction_scraper(attraction)
        #binding.pry
        Attraction.display_attraction(attraction)
        
        puts "Want to see a different attraction? Type 'list' to view the attractions again.".colorize(:light_magenta) 
        puts ""
        puts "Otherwise type 'exit', to exit".colorize(:light_magenta)
        puts ""
      elsif input == "list"
        puts ""
        puts "---------------------------------------------------------------------------".colorize(:blue)
        puts "                      TOP ATTRACTIONS IN THE BAHAMAS!"
        puts "---------------------------------------------------------------------------".colorize(:blue)
        puts "  Enter the number located next to the attraction you would like details on: ".colorize(:white)
        puts ""
        puts "          Otherwise, if you'd like to exit just type 'exit'.".colorize(:white)
        puts "---------------------------------------------------------------------------".colorize(:blue)
        Attraction.print_all_attractions
      elsif input != "exit"
        puts "-------------------------------------------------------------------------------".colorize(:white)
        puts "Oh no, it looks like that is not a valid response, please enter a valid option.".colorize(:red)
        puts ""
        puts "Please type 'list' to see the entire list of attractions again.".colorize(:red)
        puts ""
        puts "Otherwise, if you'd like to exit just type 'exit'.".colorize(:red)
        puts "-------------------------------------------------------------------------------".colorize(:white)
      end
    end    
  end
end
    #######################################################################
    # if line: if input is a number and less than that of attractions but > 0  if input = input.to_i && input < Attraction.all.length && input > 0  #if input < Attraction.all.length && input > 0
    #######################################################################
    #   input = gets.strip.to_i 
    #   if input < Song.all.length && input > 0
    ########################################################################
