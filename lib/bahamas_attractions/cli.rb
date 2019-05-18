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
    puts "Simply enter the number located next to the attraction you are interested in: ".colorize(:blue)
    puts ""
    puts ""
    puts "´¨`*•.¸¸.•*´¨`*• ATTRACTIONS¸.•*´¨`*•.¸¸.•*´¨`".colorize(:light_cyan)
    puts ""
    puts "-----------------------------------------------".colorize(:light_blue)

  end
  
  def start_list
    input = ""
    while input != "exit" do
      puts "To see the entire list of attractions again, please type 'list'.".colorize(:blue)
      puts ""
      puts "Otherwise, to exit just type 'exit'!".colorize(:blue)
      input = gets.strip.downcase
    
      #if input is a number and less than that #of attractions but > 0
       if input = input.to_i && input < Attraction.all.length && input > 0 
        Scraper.single_attraction_scraper(attractions)             #do i need a test variable here like an if
        print_single_choice(scraper_single_attraction)
      elsif input == "list"
        print_attractions
      elsif input != "exit"
        puts "Oh no, it looks like that is not a valid response, please enter a valid option now. "
      end
    end    
  end
  
  def print_all_attractions
    Attraction.all.each.with_index(1) do |att, index|
      puts "#{index}. #{att.name}".colorize(:light_blue)
      puts "-----------------------------------------------".colorize(:light_blue)
    end
  end
  
  def print_single_choice(scraper_single_attraction)
    puts "#{attraction.name.upcase}"  #can i center this - do i need gems like colorize for this project
    puts "-------------------------------------------------"
    puts ""
    puts "Catagory: #{attraction.catagories}"
    puts ""
    puts "Description:"
    puts "#{attraction.description}"
    puts ""
    puts "Price: #{attraction.price}"       #if no price dont include this--apply to all of these
    puts ""
    puts "Reviews:"
    puts ""
    puts "#{attraction.reviews}"
  end 
  
  
end
 
     