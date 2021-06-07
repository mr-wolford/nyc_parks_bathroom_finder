class NycpBf::CLI

    def call
        puts "\nWelcome to the NYC Parks Bathroom Finder!"
        puts "\nEnter a NYC ZIP code to find a public park bathroom near you."
        get_parks
        list_parks
        # get_user_park
        # get_bathrooms
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

    def get_user_park
        user_park = gets.strip.to_i
        show_bathrooms_for(user_park)
    end

    def show_bathrooms_for(user_park)
        park = @parks[user_park - 1]
    end


    # def get_bathrooms
    #     NycpBf::Bathroom.get_bathrooms
    #     # @bathrooms = NycpBf::Bathroom.all.map do |x|
    #     #     x.park.include?()
    #     # end
    # end

    # end

end