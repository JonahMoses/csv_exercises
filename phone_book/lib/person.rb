class Person
  attr_reader :first_name,
              :last_name,
              :phone_number

  def initialize(person_information)
    @first_name = person_information[:first_name]
    @last_name = person_information[:last_name]
    @phone_number = person_information[:phone_number]
  end



end
