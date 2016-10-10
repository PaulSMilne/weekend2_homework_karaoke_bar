require_relative('guest')
require_relative('song')

class Room

    attr_reader :name, :songs, :guests, :entry_fee

    def initialize (name, songs)

        @name       = name
        @songs      = songs
        @guests     = []
        @entry_fee  = 10

    end

    def check_in(new_guests) 
        for guest in new_guests
            if guest.wallet >= @entry_fee
                @guests << guest.name
            end
        end

        # new_guests.each {|guest| @guests<< guest.name} 
    end

    def check_out(ex_guests)
        ex_guests.each {|guest| @guests.delete(guest.name)}  
    end

end