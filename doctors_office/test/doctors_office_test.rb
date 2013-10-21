gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/doctors_office'

class DoctorsOfficeTest < Minitest::Test
  def test_filename
    doctors_office = DoctorsOffice.new("./test/fixtures/appointments.csv")
    assert_equal "./test/fixtures/appointments.csv", doctors_office.filename
  end

  def test_load_data
    doctors_office = DoctorsOffice.new("./test/fixtures/appointments.csv")

    appointments = doctors_office.appointments[1]
    assert_equal "Sonya Larkin", appointments.patient_name
    assert_equal "2013-06-11 09:30", appointments.time
  end
end

