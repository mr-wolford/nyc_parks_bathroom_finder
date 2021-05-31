class NycpBf::Park
    attr_reader :name, :url

    @@all = []

    def initialize(name, url)
        @name = name
        @url = url
        save
    end

    def self.all
        get_parks if @@all.empty?
        @@all
    end

    def self.get_parks
        zip = gets.strip
        NycpBf::Scraper.scrape_user_parks(zip)
    end

    def save
        @@all << self
    end
    
end




