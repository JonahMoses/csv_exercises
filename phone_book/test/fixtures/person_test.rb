gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/person'

class PersonTest < Minitest::Test

  def test_first_name
    person = Person.new(first_name: "Alice")
    assert_equal "Alice", person.first_name
  end

  def test_last_name
    person = Person.new(last_name: "Smith")
    assert_equal "Smith", person.last_name
  end

  def test_phone_number
    person = Person.new(phone_number: "123-555-6789")
    assert_equal "123-555-6789", person.phone_number
  end

  def test_it_loads_all_items
    person = Person.new(first_name: "Alice", last_name: "Smith", phone_number: "123-555-6789")
    assert_equal "Alice", person.first_name
    assert_equal "Smith", person.last_name
    assert_equal "123-555-6789", person.phone_number
  end

end
