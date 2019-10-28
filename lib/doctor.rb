
class Doctor
  attr_accessor :name
  @@all =[]
  
  def initialize(name)
    @name=name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(time, patient)
    Appointment.new(time, self, patient)
  
  end
    
  def appointments
    Appointment.all.select do |appt|
      appt.doctor == self
    end
  
  end
  
  # def genres
  #   songs.map do |song|
  #     song.genre
  #   end
  # end
end
    
  