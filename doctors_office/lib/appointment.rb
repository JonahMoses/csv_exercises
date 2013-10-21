class Appointment
  attr_reader :patients

  def initialize(patients)
    @patients = patients
  end

  def patient_name
    @patients[:patient_name]
  end

  def time
    @patients[:time]
  end
end
