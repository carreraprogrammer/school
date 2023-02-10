require './person'

class Student < Person
  attr_accessor :specialization

  def initialize(classroom, age, name = 'Unknown', parent_permission: 'Unknown')
    super(age, name, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end

student = Student.new("Math", 16)

p student