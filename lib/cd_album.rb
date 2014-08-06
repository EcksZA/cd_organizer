class Album

  @@album =[]

  def initialize(album)
    @album = album[:name]
  end

  def Album.all
    @@album
  end








end
