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

    doc = Nokogiri::HTML(open("https://www.tripadvisor.com#{attraction.url}"))
      
      attraction.catagory = doc.css("div.detail a")[0].text
      attraction.description = doc.css("div.attractions-attraction-detail-about-card-AttractionDetailAboutCard__section--1_Efg")[1].text
      attraction.rating = doc.css("div.section.rating .overallRating").text
      attraction.price = doc.css("div.attractions-multi-tour-module-MultiTourOffer__offer_price_box--2dNgu .fromPrice")[0].text
  end
end
