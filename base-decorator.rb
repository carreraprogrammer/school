require './nameable.rb'

class Decorator < Nameable
  attr_accessor  :nameable_obj

  def initialize(nameable_object)
    @nameable = nameable_object
  end

  


end