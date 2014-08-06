require 'rspec'
require 'cd_artist'
require 'cd_album'

describe Artist do

  it'initializes the artist with name' do
    my_artist = Artist.new({:name => "Billy Bob Thornton"})
    my_artist.should be_an_instance_of Artist
  end

  it'initializes an empty array to store all artist names' do
    my_artist = Artist.new({:name =>"Billy Bob Thornton"})
    my_artist.artist_list.should eq ([])
  end

end
