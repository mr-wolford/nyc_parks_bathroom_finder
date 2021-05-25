class NycpBf::Park
    attr_accessor :name, :location, :borough

    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def save
        @@all << self
    end
    
end




