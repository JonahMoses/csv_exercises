gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/appointment'

class AppointmentTest < Minitest::Test
  def test_patient_name
    appointment = Appointment.new(patient_name: "Dudley Jacobs")
    assert_equal "Dudley Jacobs", appointment.patient_name
  end

  def test_time
    appointment = Appointment.new(time: "2013-06-11 09:00")
    assert_equal "2013-06-11 09:00", appointment.time
  end

  def test_all_the_things
    data = {patient_name: "Dudley Jacobs", time: "2013-06-11 09:00"}
    appointment = Appointment.new(data)
    assert_equal "Dudley Jacobs", appointment.patient_name
    assert_equal "2013-06-11 09:00", appointment.time
  end
end

