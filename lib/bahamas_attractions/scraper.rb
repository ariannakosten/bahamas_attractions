class Scraper
  
  def self.scrape_all_attractions
  
    html = open("https://www.tripadvisor.com/Attractions-g147414-Activities-Bahamas.html")
    doc = Nokogiri::HTML(html)
 
    doc.css(".attractions-attraction-overview-main-PoiGrid__wrapper--3t2QY li").each do |att|
        #binding.pry
      name = att.css("a")[0].css("img").attr("alt").value
      attraction = Attraction.new(name)
      url = att.css("a")[0].attr("href")
      attraction.url = url
    end
    #binding.pry
  end
  
  def self.single_attraction_scraper(attraction)
    html = open("https://www.tripadvisor.com/")
    doc = Nokogiri::HTML(html)
    doc.css("attractions-attraction-overview-main-PoiGrid__wrapper--3t2QY").each do |att|
      attraction.name = att.css(".attractions-attraction-overview-main-PoiInfo__name--378VB")
      # attraction.description = 
      # attraction.reviews =
      # attraction.catagories = 
      # attraction.price =
    end
  end
  
  def self.scrape_catagories  #scrape prices and be able to select attractions based on a price range (sort_by)
  
  end
  
  def self.scrape_prices   #scrape prices and be able to select attractions based on a price range (sort_by)
  
  end

end