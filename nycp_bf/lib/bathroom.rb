class NycpBf::Bathroom
    attr_reader :name, :location, :park

    @@all = []

    def initialize(name, location, park)
        @name = name
        @location = location
        @park = park
        add_to_park
        save
        #park should be a NycpBf::Park object
    end

    def self.all
        @@all
    end

    def self.get_bathrooms
        input = gets.strip.to_i - 1
        @park = NycpBf::Park.all[input]
        NycpBf::Scraper.scrape_user_bathrooms(@park) 
        # will probably need to add a line above that doesn't scrape if @park already has a bathrooms array
    end

    def add_to_park
        @park.bathrooms << self unless @park.bathrooms.include?(self)
    end

    def save
        @@all << self
    end

end