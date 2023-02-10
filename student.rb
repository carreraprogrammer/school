require './person'
require './classroom'

class Student < Person
  attr_accessor :specialization, :classroom

  def initialize(classroom, age, name = 'Unknown', parent_permission: 'Unknown')
    raise "The class doesn't exist, please create an object classroom first" unless classroom.is_a?(Classroom)

    super(age, name, parent_permission: parent_permission)
    @classroom = classroom
    @classroom.students << self
  end

  def play_hooky
    '¯(ツ)/¯'
  end

  def class?
    @classroom.label
  end

  def classroom=(classroom)
    if !classroom.students.include?(self)
      @classroom = classroom
      classroom.students.push(self) unless classroom.students.include?(self)
    else
      raise "The student is already registered in the classroom"
    end
  end
end
