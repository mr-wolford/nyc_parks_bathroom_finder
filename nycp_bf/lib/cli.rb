
class NycpBf::CLI
    
    def call
        puts "\nWelcome to the NYC Parks Bathroom Finder!"
        # need to ask for zip code
        # then take that zip and put it in the NYC Parks website search URL at the appropriate place
        puts "\nPlease enter the NYC ZIP code where you would like to find a public park bathroom."
        gets.strip
    end

end