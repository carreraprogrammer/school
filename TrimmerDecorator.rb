require './Decorator'

class TrimmerDecorator < Decorator
  def correct_name
    name = @nameable_object.correct_name
    if name.length > 10
      name[0, 10]
    else
      name
    end
  end
end
