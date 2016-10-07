require('minitest/autorun')
require('minitest/rg')
require_relative('../guest')

class TestLine < MiniTest::Test

    def setup
        @guest = Guest.new("Cookie")
    end

    def test_guest_has_name
        assert_equal("Cookie", @guest.name) 
    end

end