require './Decorator'

class CapitalizeDecorator < Decorator
  def initialize(nameable_obj)
    super(nameable_obj)
  end
  
    def correct_name
      @nameable_object.correct_name.upcase
    end
  end
