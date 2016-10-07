require('minitest/autorun')
require('minitest/rg')
require_relative('../song')

class TestSong < MiniTest::Test

    def setup
        @song = Song.new("Wannabe", "Spice Girls")
    end

    def test_song_has_name
        assert_equal("Wannabe", @song.title)
    end

    def test_song_has_artist
        assert_equal("Spice Girls", @song.artist)
    end

end