
class NycpBf::CLI
    
    def call
        puts "\nWelcome to the NYC Parks Bathroom Finder!"
        puts "\nEnter a NYC ZIP code to find a public park bathroom near you."
        get_parks
        list_parks
        get_bathrooms
        #list_bathrooms
    end

    def get_parks
        @parks = NycpBf::Park.all
    end
    
    def list_parks
        @parks.each.with_index(1) do |park, index| 
            puts" #{index}. #{park.name}"
        end
        puts "\nChoose a park to see additional information."
    end

    def get_bathrooms
      @bathroom = NycpBf::Bathroom.get_bathrooms
    end

end