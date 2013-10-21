class Grade
  attr_reader :students

  def initialize(students)
    @students = students
  end

  def student_name
    @students[:student_name]
  end

  def subject
    @students[:subject]
  end

  def percentage
    @students[:percentage]
  end

end
