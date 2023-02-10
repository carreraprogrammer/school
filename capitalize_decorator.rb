require './decorator'

class CapitalizeDecorator < Decorator
  def correct_name
    @nameable_object.correct_name.capitalize
  end
end
