require './nameable'
require './CapitalizeDecorator'
require './TrimmerDecorator'

class Person < Nameable
  attr_reader :id
  attr_accessor :name, :age, :nameable

  @counter = 0

  def initialize(age, name = 'unknown', parent_permission: true)
    @counter = 0
    @counter += 1
    @id = @counter
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  private

  def of_age?
    @age >= 18
  end

  public

  def can_use_services?
    of_age? || @parent_permission
  end

  def correct_name
    @name
  end
end


person = Person.new(22, 'maximilianus')
p person.correct_name

#=> "maximilianus"

capitalizedPerson = CapitalizeDecorator.new(person)
p capitalizedPerson.correct_name

# => "MAXIMILIANUS"

capitalizedTrimmedPerson = TrimmerDecorator.new(capitalizedPerson)
p capitalizedTrimmedPerson.correct_name

# => "MAXIMILIAN"