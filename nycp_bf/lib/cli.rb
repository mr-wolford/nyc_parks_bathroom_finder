
class NycpBf::CLI
    
    def call
        puts "\nWelcome to the NYC Parks Bathroom Finder!"
        puts "\nPlease enter a NYC ZIP code to find a public park bathroom near you."
        #zip = gets.strip
        get_parks
        list_parks
        get_user_park
    end

    # @zip should turn into an @parks array via scraping

    def get_parks
        zip = gets.strip
        #use NycpBf::Park below and scrape from there (no scrape on CLI)
        NycpBf::Scraper.get_user_parks(zip)
    end
    
    def list_parks
        NycpBf::Park.all.each.with_index(1) do |month, index| 
            puts" #{index}. #{month.name}"
        end

        # user selects a number to learn more
            # scraper activates to get additional information
                # what else can it show? any additional information than more specific location?
        #likely going to be: NycpBf::Park.all.each.with_index(1) do |month, index| 
            #puts" #{index}. #{month.name}"
        #end
    end

    def get_user_park
        # use this once the list of parks from selected zip code is displayed
        #chosen_park = gets.strip
    end

end