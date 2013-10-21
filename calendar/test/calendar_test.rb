gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/calendar'

class CalendarTest < Minitest::Test

  def test_filename
    calender = Calendar.new("./test/fixtures/birthdays.csv")
    assert_equal "./test/fixtures/birthdays.csv", calender.filename
  end

  def test_load_data
    calender = Calendar.new("./test/fixtures/birthdays.csv")

    birthday = calender.birthday[1]
    assert_equal "John Terry", birthday.name
    assert_equal "1983-07-21", birthday.date_of_birth
  end
end

