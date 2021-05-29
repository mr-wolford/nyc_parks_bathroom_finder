class NycpBf::Scraper

    def self.get_user_parks(zip)
        doc = Nokogiri::HTML(open("https://www.nycgovparks.org/parks?search=#{zip}&facility%5B%5D=6176&type=zip&Submit=Find+It#form_top"))
        
        parks = doc.css(".park-search-item h3")

        parks.each do |park| 
            NycpBf::Park.new(park.text)
        end
    end


end
