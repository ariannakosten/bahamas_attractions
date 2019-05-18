class CLI

  def call
      welcome
      Scraper.scrape_all_attractions
                                        #binding.pry
      print_all_attractions
      start_list
  end
  
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
        attraction = Attraction.all.sort {|a, b| a.name <=> b.name}[input.to_i -1]        #<< or [input -1] # may need to sort in attractions file?
        Scraper.single_attraction_scraper(attraction) #if !attraction.catagory            #<< do i need a test variable here like an if? or "if attraction"
        list_single_attraction(attraction)
      elsif input == "list"
        puts "Enter the number located next to the attraction you would like details on: "
        print_all_attractions
      elsif input != "exit"
        puts "Oh no, it looks like that is not a valid response, please enter a valid option.".colorize(:light_magenta)
        puts ""
        puts "You can type 'list' to see the entire list of attractions again.".colorize(:light_magenta)
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
    
  def print_all_attractions
    Attraction.all.each.with_index(1) do |att, index|
      puts "#{index}. #{att.name}".colorize(:light_blue)
      puts "-----------------------------------------------".colorize(:light_blue)
    end
  end
  
  def list_single_attraction(attraction)
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
    
    #these lines need to run to loop back - otherwise stuck vvv
    
    if input == "list"
      print_all_attractions
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

#   case input
#     when input == "list"
#       print_all_attractions
#     when input != "exit"
#       puts "Invalid action, please type 'list' to view all attractions or 'exit' to exit"
     