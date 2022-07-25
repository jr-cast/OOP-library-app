class Person 
  attr_reader :id
  attr_accessor :name, :age
  def initialize(name, age = "Unknown", parent_permission = true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end 

  def can_use_services? 
    if is_of_age? || @parent_permission == true
      return true
    else
      return false
    end
  end 

  private

  def is_of_age?
    if @age >= 18
      return true
    elsif @age < 18
      return false
    end
  end

end


