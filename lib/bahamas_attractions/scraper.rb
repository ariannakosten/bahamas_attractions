class Scraper
  
  def self.scrape_attractions
    
    html = open("https://www.tripadvisor.com/Attractions-g147414-Activities-Bahamas.html")
    doc = Nokogiri::HTML(html)
    doc.css("attractions-attraction-overview-main-PoiGrid__wrapper--3t2QY").each do |attraction|
      attraction = Attraction.new
      attraction.title = att.css("a")".attractions-attraction-overview-main-PoiInfo__name--378VB"
      
  
  
  
end