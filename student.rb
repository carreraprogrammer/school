class Person
    attr_reader :id
    attr_accessor :name, :age
  
    @counter = 0
  
    def initialize(age, name = 'unknown', parent_permission: true)
      @counter += 1
      @id = @@counter
      @name = name
      @age = age
      @parent_permission = parent_permission
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