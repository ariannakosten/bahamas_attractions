class CLI

  def call
      welcome
      Scraper.scrape_all_attractions
                                        #binding.pry
      Attraction.print_all_attractions
      start_list
  end
  
  #may want it to have welcome line then start list then ask for input
  
   def welcome
    puts ""
    puts "Welcome to the Top Attractions in the Bahamas!".colorize(:blue)
    puts ""
    puts "Which attraction would you like to see details on first?".colorize(:blue)
    puts ""
    puts "Simply enter the number located next to the attraction you are interested in.".colorize(:blue)
    puts ""
    puts "Otherwise type 'exit, to exit.".colorize(:blue)
    puts ""
    puts "´¨`*•.¸¸.•*´¨`*•.•*´¨`*•.¸¸.•*´¨´¨`*•.¸¸.•*´¨`".colorize(:light_blue)
    puts ""
    puts "                ATTRACTIONS".colorize(:light_blue)
    puts ""
    puts "´¨`*•.¸¸.•*´¨`*•.•*´¨`*•.¸¸.•*´¨´¨`*•.¸¸.•*´¨`".colorize(:light_blue)
    puts ""
    puts "-----------------------------------------------".colorize(:light_blue)
  end
  
  def start_list
    
    input = ""
    
    while input != "exit" do
      
      input = gets.strip.downcase       
      
      #this is where i tell it to grab one attraction and open the page that #prints single choice
      
      if (1..30).include?(input.to_i)  
        
        attraction = Attraction.find_attraction(input.to_i)
        Scraper.single_attraction_scraper(attraction)
        #Attraction.display_attraction(attraction)
        puts "Want to see a different attraction? Type 'list' to view the attractions again.".colorize(:red) 
        puts "Otherwise type 'exit', to exit".colorize(:red)
    
        #list_single_attraction(attraction)
      elsif input == "list"
        puts "Enter the number located next to the attraction you would like details on: "
        print_all_attractions
      elsif input != "exit"
        puts "Oh no, it looks like that is not a valid response, please enter a valid option.".colorize(:light_magenta)
        puts ""
        puts "Please type 'list' to see the entire list of attractions again.".colorize(:light_magenta)
        puts ""
        puts "Otherwise, if you'd like to exit just type 'exit'.".colorize(:light_magenta)
        #print_all_attractions
      end
    end    
  end
  
  # if line: if input is a number and less than that of attractions but > 0  if input = input.to_i && input < Attraction.all.length && input > 0  #if input < Attraction.all.length && input > 0
  
    # def play_song
    #   input = gets.strip.to_i 
    #   if input < Song.all.length && input > 0
    #   song = Song.all.sort {|a, b| a.name <=> b.name}[input -1]
    #   end
    #     puts "Playing #{song.name} by #{song.artist.name}" if song
    # end
    
  
  
 

#   case input
#     when input == "list"
#       print_all_attractions
#     when input != "exit"
#       puts "Invalid action, please type 'list' to view all attractions or 'exit' to exit"
     