class NycpBf::Scraper

    def self.scrape_user_parks(zip)
        doc = Nokogiri::HTML(open("https://www.nycgovparks.org/parks?search=#{zip}&facility%5B%5D=6176&type=zip&Submit=Find+It#form_top"))
        
        park = doc.css(".park-search-item")

        park.each do |park| 
            name = park.css("h3").text
            url = "http://nycgovparks.org#{park.css(".icon_highlight a").attr("href").value}"
            NycpBf::Park.new(name, url)
        end
    end

    def self.scrape_user_bathrooms(park)
        #takes an argument of a Park object
        #accesses the url, adds in "http://nycgovparks.org"
        #sends information to Bathroom.new

        doc = Nokogiri::HTML(open(park.url))

        binding.pry




    end


end
