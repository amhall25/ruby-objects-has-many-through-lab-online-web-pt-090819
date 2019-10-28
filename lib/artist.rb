class Artist
  attr_accessor :name
  
  @@all=[]
  def initialize (name)
    @name=name
    @songs=[]
    @@all << self
    
  end
  
  def self.all
    @@all
  end
  
  def new_song(song, genre)
    
  def songs
    @songs
  end
end