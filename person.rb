require './nameable'

class Person < Nameable

  attr_reader :id
  attr_accessor :name, :age, :nameable_object

  @counter = 0

  def initialize(age, name = 'unknown', parent_permission: true, nameable_object: nil)
    @counter += 1
    @id = @@counter
    @name = name
    @age = age
    @parent_permission = parent_permission
    @nameable_object = nameable_object
  end

  private

  def of_age?
    @age >= 18
  end

  public

  def can_use_services?
    is_of_age? || @parent_permission
  end
end
