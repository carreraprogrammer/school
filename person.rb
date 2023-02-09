require './nameable'
require './capitalize_decorator'
require './trimmer_decorator'

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
    super()
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

capitalized_person = CapitalizeDecorator.new(person)
p capitalized_person.correct_name

#=> "MAXIMILIANUS"

capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
p capitalized_trimmed_person.correct_name

# => "MAXIMILIAN"