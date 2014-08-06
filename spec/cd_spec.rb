require 'rspec'
require 'cd_artist'
require 'cd_album'

describe Artist do

  it 'initializes the artist with name' do
    my_artist = Artist.new({:name => "Prince"})
    my_artist.should be_an_instance_of Artist
  end

  describe ".all" do
    it 'creates a global array that is empty' do
      Artist.all.should eq []
    end

    it 'saves the inputted artist into the global array' do
      my_artist = Artist.new({:new => "Prince"})
      my_artist.save
      Artist.all.should eq [my_artist]
    end
  end
end

describe Album do

  it 'initializes the album with album name' do
    my_album = Album.new({:name => "Dirty Mind"})
    my_album.should be_an_instance_of Album
    end
  end

  describe ".all" do
    it 'creates a global array for albums that is empty' do
      Album.all.should eq []
    end

  end
