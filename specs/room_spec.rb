require('minitest/autorun')
require('minitest/rg')
require_relative('../room')

class TestRoom < MiniTest::Test

    def setup
        @guest1 = Guest.new("Cookie")
        @guest2 = Guest.new("Diana")
        @guest3 = Guest.new("Ewan")
        @guest4 = Guest.new("Cyrus")
        @guest5 = Guest.new("Claudia")

        @new_guests = [@guest1, @guest2, @guest3, @guest4]
        @one_more_guest = [@guest5]

        @song1 = Song.new("Wannabe", "Spice Girls")
        @song2 = Song.new("Let's Get This Party Started", "Pink")
        @song3 = Song.new("Bad Romance", "Lady Gaga")

        @pop_songs = [@song1, @song2, @song3]

        @room1 = Room.new("Pop Room", @pop_songs)
    end


     def test_check_in_more_guests
         @room1.check_in(@new_guests)
         assert_equal(["Cookie","Diana","Ewan","Cyrus"], @room1.guests)
         @room1.check_in(@one_more_guest)
         assert_equal(["Cookie","Diana","Ewan","Cyrus", "Claudia"], @room1.guests)
     end

     def room_has_name
        assert_equal("Pop Room", @room1.name)
     end

     def test_room_has_songs
        assert_equal("Wannabe", @room1.songs[0].title)
     end

end