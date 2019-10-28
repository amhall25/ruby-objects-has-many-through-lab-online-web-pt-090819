#The `Doctor` class needs a class variable `@@all` that begins as an empty array.
# The `Doctor` class needs a class method `.all` that lists each doctor in the
#   CLASS VARIABLE.
# - A DOCTOR SHOULD BE INITIALIZED WITH A NAME AND BE SAVED IN THE `@@ALL` ARRAY.
# - THE `DOCTOR` CLASS NEEDS AN INSTANCE METHOD, `#NEW_APPOINTMENT`, THAT TAKES IN A
#   AN INSTANCE OF THE `PATIENT` CLASS AND A DATE, AND CREATES A NEW `APPOINTMENT`. THAT
#   `APPOINTMENT` SHOULD KNOW THAT IT BELONGS TO THE DOCTOR
# - THE `DOCTOR` CLASS NEEDS AN INSTANCE METHOD, `#APPOINTMENTS`, THAT ITERATES
#   THROUGH ALL `APPOINTMENT`S AND FINDS THOSE BELONGING TO THIS DOCTOR.
# - THE `DOCTOR` CLASS NEEDS AN INSTANCE METHOD, `#PATIENTS`, THAT ITERATES OVER
#   THAT DOCTOR'S `APPOINTMENT`S AND COLLECTS THE PATIENT THAT BELONGS TO EACH
#   `APPOINTMENT`S.
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
    
  # def songs
  #   Song.all.select do |song|
  #     song.artist == self
  #   end
  
  # end
  
  # def genres
  #   songs.map do |song|
  #     song.genre
  #   end
  # end
end
    
  