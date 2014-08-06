class Artist
  attr_reader(:name)
  @@artist_list = []


  def initialize(attributes)
    @name = attributes[:name]
  end

  def Artist.all
    @@artist_list
  end

  def save
    @@artist_list << self
  end

end
