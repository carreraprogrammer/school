require './person'
require './classroom'

class Student < Person
  attr_accessor :specialization, :classroom

  def initialize(classroom, age, name = 'Unknown', parent_permission: 'Unknown')
    super(age, name, parent_permission: parent_permission)
    @classroom = classroom
    @@classroom.students << self
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end


math_class = Classroom.new("Math")


p math_class