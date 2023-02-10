require './nameable'
require './capitalize_decorator'
require './trimmer_decorator'

class Person < Nameable
  attr_reader :id
  attr_accessor :name, :age, :nameable, :rents

  @counter = 0

  def initialize(age, name = 'unknown', parent_permission: true)
    @counter += 1
    @id = @counter
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rents = []
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

  def rents?
    @rents
  end

  def add_rental(_person, date)
    Rental.new(date, book, self)
  end
end
