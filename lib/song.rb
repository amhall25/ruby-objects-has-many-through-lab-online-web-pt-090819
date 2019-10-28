class Song
  attr_accessor :name, :artist, :genre
  
  def initialize (name, artist, genre)
    @name= name
    @artist = Artist.new(artist).name
    @genre = Genre.new(genre).name
  end
end
  
  