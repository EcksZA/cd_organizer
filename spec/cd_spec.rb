require 'rspec'
require 'cd_artist'
require 'cd_album'
require 'pry'
describe Artist do

  before (:each) do
    Artist.clear
  end

  it 'initializes the artist with name' do
    my_artist = Artist.new({:name => "Prince"})
    my_artist.should be_an_instance_of Artist
  end

describe ".clear" do
    it "clears all the information in the array for testing purposes" do
      Artist.new({:name => "Prince"}).save
      Artist.clear
      Artist.all.clear.should eq []
    end
end


  describe ".all" do
    it 'creates a global array that is empty' do
      Artist.all.should eq []
    end

    it 'saves the inputted artist into the global array' do
      my_artist = Artist.new({:name => "Prince"})
      my_artist.save
      Artist.all.should eq [my_artist]
    end
  end

  it "creates an empty array to list the artist's albums" do
    my_artist = Artist.new({:name => "Prince"})
    my_artist.albums.should eq []
  end

  it "adds the artists' album to a list array" do
    my_artist = Artist.new({:name => "Prince"})
    my_album = Album.new({:name => "Dirty Mind"})
    my_artist.add_album(my_album)
    my_artist.albums.should eq [my_album]
  end

  describe "find_by_name" do
    it 'returns the artist that matches the given name' do
      my_artist = Artist.new({:name => "The Beatles"})
      my_artist.save
      Artist.find_by_name('The Beatles').should eq my_artist
    end
  end

  describe ".artists_print" do
    it 'returns the list of artists that have been added to the artist list array' do
      my_artist_1 = Artist.new({:name => "Millie Jackson"}).save
      my_artist_2 = Artist.new({:name => "Michael Jackson"}).save
      my_artist_3 = Artist.new({:name => "Nirvana"}).save

      Artist.artists_print.should eq ["Millie Jackson", "Michael Jackson", "Nirvana"]
    end
  end
end







describe Album do

  it 'initializes the album with album name' do
    my_album = Album.new({:name => "Dirty Mind"})
    my_album.should be_an_instance_of Album
  end

  describe ".all" do
    it 'creates a global array for albums that is empty' do
      Album.all.should eq []
    end

    it 'saves the album into the alum array' do
      my_album = Album.new({:name => "Dirty Mind"})
      my_album.save
      Album.all.should eq [my_album]
    end
  end
end
