class Birthday
  attr_reader :birthday

  def initialize(birthday)
    @birthday = birthday
  end

  def name
    @birthday[:name]
  end

  def date_of_birth
    @birthday[:date_of_birth]
  end

end
