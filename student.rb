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
end


math_class = Classroom.new("Math")

p "This is the class"
p math_class

student1 = Student.new(math_class, 16)
p student1.class?

p math_class