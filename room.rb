require_relative('guest')
require_relative('song')

class Room

    attr_reader :name, :songs, :guests

    def initialize (name, songs)

        @name = name
        @songs = songs
        @guests = []

    end

    def check_in(new_guests)
        new_guests.each {|guest| @guests<< guest.name} 
    end

    def check_out(ex_guests)
        ex_guests.each {|guest| @guests.delete(guest.name)}  
    end

end