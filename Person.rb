class Person
    attr_reader :id
    attr_accessor :name, :age

    @@counter = 0

    def initialize(age, name='unknown', parent_permission=true)
      @@counter += 1
      @id = @@counter
      @name= name
      @age = age
      @parent_permission = parent_permission
    end

    private
    def is_of_age?
      if @age >= 18
        true
      else
        false
      end
    end

    public
    def can_use_services?
      is_of_age? || @parent_permission
    end
end
