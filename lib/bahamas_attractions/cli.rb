class CLI

  def call
      welcome
      Scraper.scrape_attractions
      print_all_attractions
      start_list
  end
  
   def welcome
    puts ""
    puts "Welcome to the Top Attractions in the Bahamas!"
    puts "Which attraction would you like to see details on first?"
  end
  
  def start_list
    input = ""
    while input != "exit" do
      puts "Please enter the number located next to the attraction you are interested in: "
      puts "To see the entire list of attractions again, please type 'list'." 
      puts "Otherwise, to exit just type 'exit'!"
      
      input = gets.strip.downcase
      #if input is a number and less than that #of attractions but > 0
       if input = input.to_i && input < Attractions.all.length && input > 0 
        Scraper.single_attraction_scraper(attractions)             #do i need a test variable here
        print_single_choice(scraper_single_attraction)
      elsif input == "list"
        print_attractions
      elsif input != "exit"
        puts "Oh no, it looks like that is not a valid response, please enter a valid option now. "
      end
    end    
  end
  
  def print_all_attractions
    Attractions.all.each.with_index(1) do |att, index|
      puts "#{index}. #{att.name}"
    end
  end
  
  def print_single_choice(scraper_single_attraction)
    puts "#{attraction.name.upcase}"
    puts ""
    puts "Catagory: #{attraction.catagories}"
    puts ""
    puts "Description:"
    puts "#{attraction.description}"
    puts ""
    puts "Price: #{attraction.price}" #if no price dont include this--apply to all of these
    puts ""
    puts "Reviews:"
    puts ""
    puts "#{attraction.reviews}"
  end 
  
  
end
 
     