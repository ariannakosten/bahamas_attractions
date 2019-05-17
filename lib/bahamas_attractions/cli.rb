class CLI

  def run
      welcome
      Scraper.scrape_attractions
      print_attractions
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
    end
  end
  
  def print_attractions
    Attractions.all.each.with_index(1) do |att, index|
      puts "#{index}. #{att.name}"
    end
  end
end
  
  def print_single_choice(attraction)
    puts "#{attraction.name.upcase}"
    puts ""
    puts "Catagory: #{attraction.catagories}"
    puts ""
    puts "Description:"
    puts "#{attraction.description}"
    puts ""
    puts "Price: #{attraction.price}"
    puts ""
    puts "Reviews:"
    puts ""
    puts "#{attraction.reviews}"
  end 
  
end
 
     