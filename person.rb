require './nameable'

class Person < Nameable
  attr_reader :id
  attr_accessor :name, :age, :nameable

  @counter = 0

  def initialize(age, name = 'unknown', parent_permission: true, nameable: nil)
    @counter += 1
    @id = @@counter
    @name = name
    @age = age
    @parent_permission = parent_permission
    @nameable = nameable
    super()
  end

  private

  def of_age?
    @age >= 18
  end

  public

  def can_use_services?
    is_of_age? || @parent_permission
  end

  def correct_name
    @nameable.correct_name
  end
end
