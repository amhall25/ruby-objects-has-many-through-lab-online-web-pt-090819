class Appointment
  
  attr_accessor :time, :doctor, :patient
  @@all =[]
  def initialize (time, doctor, patient)
    @time= time
    @artist = artist
    @genre = genre
    @@all << self
  end
  
  def self.all
    @@all
  end
end
