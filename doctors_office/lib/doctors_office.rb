require 'csv'
require './lib/appointment'

class DoctorsOffice
  attr_reader :filename

  def initialize(filename)
    @filename = filename
  end

 def appointments
    @appointments ||= build_appointments
end

private

  def build_appointments
    data.collect do |row|
      Appointment.new(row)
    end
  end

  def data
    CSV.open(filename, headers: true, header_converters: :symbol)
  end

end
