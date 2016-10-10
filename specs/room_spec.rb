require('minitest/autorun')
require('minitest/rg')
require_relative('../room')

class TestRoom < MiniTest::Test

    def setup
        @guest1 = Guest.new("Cookie", 10)
        @guest2 = Guest.new("Diana", 11)
        @guest3 = Guest.new("Ewan", 15)
        @guest4 = Guest.new("Cyrus", 9)
        @guest5 = Guest.new("Claudia", 5)

        @new_guests = [@guest1, @guest2]
        @one_more_guest = [@guest5]
        @guests_out = [@guest1]

        @song1 = Song.new("Wannabe", "Spice Girls")
        @song2 = Song.new("Let's Get This Party Started", "Pink")
        @song3 = Song.new("Bad Romance", "Lady Gaga")

        @pop_songs = [@song1, @song2, @song3]

        @room1 = Room.new("Pop Room", @pop_songs)

        @entry_fee = 10
    end


     def test_check_in_guests
         @room1.check_in(@new_guests)
         assert_equal(["Cookie","Diana"], @room1.guests)
         @room1.check_in([@guest5])
         assert_equal(["Cookie", "Diana"], @room1.guests)
     end

     def test_check_out_guests
        @room1.check_in([@guest1, @guest2, @guest3, @guest4])
        assert_equal(["Cookie","Diana","Ewan"], @room1.guests)
        @room1.check_out([@guest1])
        assert_equal(["Diana", "Ewan"], @room1.guests)
     end

     # def room_has_name
     #    assert_equal("Pop Room", @room1.name)
     # end

     # def test_room_has_songs
     #    assert_equal("Wannabe", @room1.songs[0].title)
     # end



end