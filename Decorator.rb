require './nameable'

class Decorator < Nameable
  attr_accessor  :nameable_obj

  def initialize(nameable_object)
    @nameable_object = nameable_object
  end

  def correct_name
    @nameable_object.correct_name
  end
end