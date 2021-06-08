class NycpBf::CLI

    def call
        puts "\nWelcome to the NYC Parks Bathroom Finder!"
        puts "\nEnter a NYC ZIP code to find a public park with bathroom access near you."
        get_parks
        list_parks
        get_bathrooms
        list_bathrooms
    end

    def get_parks
        @parks = NycpBf::Park.all
    end
    
    def list_parks
        @parks.each.with_index(1) do |park, index| 
            puts" #{index}. #{park.name}"
        end
        puts "\nChoose a park to see additional bathroom details"
    end

    def get_bathrooms
        NycpBf::Bathroom.get_bathrooms
        @bathrooms = NycpBf::Bathroom.all
        
        #need to add something to the line above that selects from the Bathroom.all array to find those only with the Park object selected? this might actually be handled in Bathroom.get_bathrooms method - check it
        

    end

    def list_bathrooms
        @bathrooms.each.with_index(1) do |bathroom, index|
            puts " #{index}. #{bathroom.name} - #{bathroom.location}"
        end
    end

end