class Artist
  attr_reader(:name, :albums)
  @@artist_list = []

  def initialize(attributes)
    @name = attributes[:name]
    @albums = []
  end

  def Artist.all
    @@artist_list
  end

  def save
    @@artist_list << self
  end

  def add_album(album_name)
    @albums << album_name
  end

  def Artist.find_by_name(name)
    @@artist_list.detect { |artist| artist.name == name }
  end

  def Artist.artists_print
    @ar = []
    @@artist_list.each {|artists| ar << artists.name}
    @ar
  end

  def Artist.clear
    @@artist_list = []
  end


end
