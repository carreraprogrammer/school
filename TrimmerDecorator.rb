require './Decorator'

class TrimmerDecorator < Decorator
  
  attr_accessor  :nameable_obj

  def initialize(nameable_object)
    @nameable_object = nameable_object
  end
  
  def correct_name
    name = @nameable_object.correct_name
    if name.length > 10
      name[0, 10]
    else
      name
    end
  end
end
