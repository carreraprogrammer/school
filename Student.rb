require './person'

class Student < Person
  attr_accessor :specialization

  def initialize(classroom, age, name = 'Unknown', parent_permission: 'Unknown')
    super(age, name, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end

daniel = Student.new(27, 27, 'Daniel', true)

p daniel.play_hooky
p daniel.can_use_services?
