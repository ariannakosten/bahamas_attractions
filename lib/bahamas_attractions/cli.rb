class Bahamas_Attractions::CLI

  def run
      puts "Welcome to the Top Attractions in the Bahamas!"
    Bahamas_attractions::Scraper.scrape_attractions
     print_attractions
      input = ""
    while input != "exit" do
      puts "Which attraction would you like to see details on?"
      puts "Please enter the number of the attraction or type 'exit' to exit."
      input = gets.strip
    end
  end
  
  def print_attractions
    Attractions.all.each.with_index(1) do |att, index|
      puts "#{index}. #{att.name}"
    end
  end
end
  