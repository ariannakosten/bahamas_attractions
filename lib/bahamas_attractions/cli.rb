class Bahamas_Attractions::CLI

  def call
    Bahamas_attractions::Scraper.new.make_attractions
    puts "Welcome to the Top Attractions in the Bahamas!"
    start
  end

  def start
    puts ""
  end
end
  