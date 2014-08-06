class Artist
  attr_reader(:name)
  @@artist_list


  def initialize(attributes)
    @name = attributes[:name]
  end

  def artist_list
    @@artist_list = []
  end

end
