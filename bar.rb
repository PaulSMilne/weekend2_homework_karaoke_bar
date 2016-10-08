require_relative('room')

class KBar

    attr_reader :rooms

    def initialize(rooms) 
        @rooms = rooms        
    end

end