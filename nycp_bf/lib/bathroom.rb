class NycpBf::Bathroom
    attr_reader :name, :location, :park

    @@all = []

    def initialize(name, location, park)
        @name = name
        @location = location
        @park = park
        save
        #park should be a NycpBf::Park object
    end

    def self.all
        get_bathrooms if @@all.empty?
        @@all
    end

    def self.get_bathrooms
        input = gets.strip.to_i - 1
        NycpBf::Scraper.scrape_user_bathrooms(NycpBf::Park.all[input])
    end

    def save
        @@all << self
    end

end