class Patient
  attr_accessor :name
  @@all=[]
  def initialize (name)
    @name = name
    @@all<< self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(time, doctor)
    a=Appointment.new (time, self, doctor)
  end
end
