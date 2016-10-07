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

        @guests = [@guest1, @guest2, @guest3, @guest4, @guest5]

        @room1 = Room.new("Pop Room", "Wannabe")
    end

    def test_check_in_one_guest
        @room1.check_in(@guest5)
        assert_equal("Claudia", @room1.guests[0].name)
    end

     def test_check_in_multiple_guests
         @room1.check_in_multiple_guests(@guests)
         assert_equal(["Cookie", "Diana", "Ewan", "Cyrus", "Claudia"], @room1.guests)
     end

end