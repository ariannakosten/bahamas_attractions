class Bahamas_Attractions::CLI

  def call
    Bahamas_attractions::Scraper.new.make_attractions
    puts "Welcome to the Top Attractions in the Bahamas!"
    start
  end

  def start
    input = ""
    while input != "exit" do
    puts "Which attraction would you like to see details on?"
    puts "Please enter the number of the attraction or type 'exit' to exit."
    input = gets.strip
  end
end
  