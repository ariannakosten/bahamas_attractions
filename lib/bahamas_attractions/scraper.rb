class Scraper
  
  def self.scrape_all_attractions
    
    doc = Nokogiri::HTML(open("https://www.tripadvisor.com/Attractions-g147414-Activities-Bahamas.html"))
  
    doc.css(".attractions-attraction-overview-main-PoiGrid__wrapper--3t2QY li").each.with_index(1) do |att, index|
      
      name = att.css("a")[0].css("img").attr("alt").value
      url = att.css("a")[0].attr("href")
      attraction = Attraction.new(name,url,index)
    end
  end
  
  def self.single_attraction_scraper(attraction)

    #binding.pry
    doc = Nokogiri::HTML(open("https://www.tripadvisor.com#{attraction.url}"))
      #binding.pry
      # attraction.catagory = 
      # attraction.description = 
      # attraction.rating =
      binding.pry
       attraction.price = doc.css("div.attractions-multi-tour-module-MultiTourOffer__offer_price_box--2dNgu .fromPrice")[0].text
  end
 

end
