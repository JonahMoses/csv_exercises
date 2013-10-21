gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/birthday'

class BirthdayTest < Minitest::Test

  def test_birthday_persons_name
    birthday = Birthday.new(name: "Darrin Bartell")
    assert_equal "Darrin Bartell", birthday.name
  end

  def test_birthday_persons_date_of_birth
    birthday = Birthday.new(date_of_birth: "1968-05-18")
    assert_equal "1968-05-18", birthday.date_of_birth
  end

end
