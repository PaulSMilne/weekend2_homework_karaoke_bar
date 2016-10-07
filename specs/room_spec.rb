require('minitest/autorun')
require('minitest/rg')
require_relative('../room')

class TestGuest < MiniTest::Test

    def setup
        @room = Room.new("Pop Room", "Wannabe", "Cookie")
    end

    def test_room_has_name
        assert_equal("Pop Room", @room.name)
    end
    def test_room_has_song
        assert_equal("Wannabe", @room.songs)
    end
    def test_room_has_guest
        assert_equal("Cookie", @room.guests)
    end

end