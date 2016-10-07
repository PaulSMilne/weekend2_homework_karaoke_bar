require('minitest/autorun')
require('minitest/rg')
require_relative('../bar')

class TestKBar < MiniTest::Test

    def setup
        @divorce = Song.new("D.I.V.O.R.C.E", "Tammy Wynette")
        @wannabe = Song.new("Wannabe", "Spice Girls")
        @earth   = Song.new("Handful of Earth", "Dick Gaughan")

        @guest1 = Guest.new("Cookie")
        @guest2 = Guest.new("Adrian")
        @guest3 = Guest.new("Paul")

        @room1 = Room.new("Pop Room", @wannabe, @guest1)
        @room2 = Room.new("Country Room", @divorce, @guest2)
        @room3 = Room.new("Folk Room", @earth, @guest3)

        rooms = [@room1, @room2, @room3]

        @karaoke_bar = KBar.new(rooms)
    end


    def test_cookie_is_in_pop_room
    end

    def test_adrian_listens_to_divorce
    end

    def test_dick_gaughan_is_playing_in_room3
    end

end