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


    # def add_song(new_songs, genres)
    #     new_songs.select {|song, genre| @songs << song.name} 
    # end    

end