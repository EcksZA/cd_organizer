require 'rspec'
require 'cd_artist'
require 'cd_album'

describe Artist do
  it'initializes the artist with name' do
    my_artist = Artist.new({:name => "Billy Bob Thornton"})
    my_artist.should be_an_instance_of Artist
  end

end
