class NycpBf::Park
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        save
    end
    
    def self.all
        NycpBf::Scraper.get_user_months(zip) if @@all.empty?
        @@all
    end

    def save
        @@all << self
    end
    
end




