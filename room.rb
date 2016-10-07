require_relative('guest')
require_relative('song')

class Room

    attr_reader :name, :songs, :guests

    def initialize (name, songs)

        @name = name
        @songs = songs
        @guests = []

    end

    def check_in(guest)
        @guests << guest
    end
   def check_in_multiple_guests(new_guests)
        new_guests.each {|guest| @guests<< guest.name} 
    end

end