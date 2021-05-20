
class NycpBf::CLI
    
    def call
        puts "\nWelcome to the NYC Parks Bathroom Finder!"
        # get_zip - method
            # then take that zip and put it in the NYC Parks website search URL at the appropriate place
        # get_parks_for(zip)
        # list_bathrooms
        puts "\nPlease enter a NYC ZIP code to find a public park bathroom near you."
        #@zip = gets.strip
        list_parks
    end

    # @zip should turn into an @parks array via scraping

    def list_parks
        @parks = ["Inwood Hill Park", "Fort Tryon Park", "Highbridge Park"]
        #print this out in indexed list form
        #user selects a number to learn more
            # scraper activates to get additional information
                # what else can it show? any additional information than more specific location?
        @parks.each.with_index(1) do |month, index| 
            puts" #{index}. #{month}"
        end
    end

end