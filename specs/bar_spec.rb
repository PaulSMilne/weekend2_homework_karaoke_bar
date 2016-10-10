require('minitest/autorun')
require('minitest/rg')
require_relative('../bar')

class TestKBar < MiniTest::Test

    def setup
        song1 = Song.new("D.I.V.O.R.C.E", "Tammy Wynette")
        song2 = Song.new("Wannabe", "Spice Girls")
        song3 = Song.new("Fly Me To The Moon", "Frank Sinatra")
        song4 = Song.new("Let's Get This Party Started", "Pink")
        song5 = Song.new("Bad Romance", "Lady Gaga")
        song6 = Song.new("I Wanna Hold Your Hand", "Beatles")
        song7 = Song.new("Folsom Prison Blues", "Johnny Cash")
        song8 = Song.new("Crazy", "Patsy Cline")
        song9 = Song.new("9 to 5", "Dolly Parton")
        song10 = Song.new("Fever", "Rosemary Clooney")
        song11 = Song.new("Mac The Knife", "Bobby Darin")
        song12 = Song.new("Stormy Weather", "Willy Nelson")

        # playlist = [song1,song2,song3,song4,song5,song6,song7,song8,song9,song10,song11,song12]

        @pop_songs = [song2, song4, song5, song6]
        @country_songs = [song1, song7, song8, song9]
        @american_standards = [song3, song10, song11, song12]

        @guest1 = Guest.new("Cookie", 5)
        @guest2 = Guest.new("Zsolt", 27)
        @guest3 = Guest.new("Paul", 9)
        @guest4 = Guest.new("Claudia", 11)
        @guest5 = Guest.new("Ewan", 14)
        @guest6 = Guest.new("Diana", 10)
        @guest7 = Guest.new("Carlos", 10)
        @guest8 = Guest.new("Max", 10)
        @guest9 = Guest.new("Sandy", 15)
        @guest10 = Guest.new("Kate", 8)
        @guest11 = Guest.new("Jo", 20)
        @guest12 = Guest.new("Bertie", 12)

        @room1 = Room.new("Pop Room", @pop_songs)
        @room2 = Room.new("Country Room", @country_songs)
        @room3 = Room.new("American Standards Room", @american_standards)

        @rooms = [@room1, @room2, @room3]

        @karaoke_bar = KBar.new(@rooms)
    end

    def test_bar_has_rooms
        room_name = @karaoke_bar.rooms[2].name
        assert_equal("American Standards Room", room_name)
    end

    def test_song_is_in_right_room
        country_song = @karaoke_bar.rooms[1].songs[1].title
        assert_equal("Folsom Prison Blues", country_song)
        assert_equal("Fever", @rooms[2].songs[1].title)
    end

    def test_can_check_guests_into_rooms
        group1 = [@guest1, @guest2, @guest3]
        group2 = [@guest4, @guest5, @guest6]
        group3 = [@guest7, @guest8, @guest9]

        @room1.check_in(group1)
        @room2.check_in(group2)
        @room3.check_in(group3)

        assert_equal(["Zsolt"], @room1.guests)
        assert_equal(["Claudia", "Ewan", "Diana"], @room2.guests)
        assert_equal(["Carlos", "Max", "Sandy"], @room3.guests)

        new_guest_1 = [@guest10]
        new_guest_2 = [@guest11]
        new_guest_3 = [@guest12]

        @room1.check_in(new_guest_1)
        @room2.check_in(new_guest_2)
        @room3.check_in(new_guest_3)

        assert_equal(["Zsolt"], @room1.guests)
        assert_equal(["Claudia", "Ewan", "Diana", "Jo"], @room2.guests)
        assert_equal(["Carlos", "Max", "Sandy", "Bertie"], @room3.guests)

    end

    def test_check_one_or_more_guests_out_of_rooms
        @room1.check_in([@guest1, @guest3, @guest5, @guest7, @guest9])
        @room1.check_out([@guest7])
        # @room1.check_out([@guest1, @guest3])
        assert_equal(["Ewan", "Sandy"], @room1.guests)
    end

end