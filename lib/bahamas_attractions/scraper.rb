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
    
    catagory = doc.css("div.detail a")[0]
    description = doc.css("div.attractions-attraction-detail-about-card-AttractionDetailAboutCard__section--1_Efg")[1]
    rating = doc.css("div.section.rating .overallRating")
    price = doc.css("div.attractions-multi-tour-module-MultiTourOffer__offer_price_box--2dNgu .fromPrice")[0]
      
    if catagory
      attraction.catagory = catagory.text
    else
      attraction.catagory = "Catagory not listed"
    end
    
    if description
      attraction.description = description.text
    else
      attraction.description = "Description not listed"
    end
    
    if rating
      attraction.rating = rating.text
    else
      attraction.rating = "Rating not listed"
    end
    
    if price
      attraction.price = price.text
    else
      attraction.price = "Price not listed"
    end
  end
end
