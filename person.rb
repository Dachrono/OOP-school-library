# Person class
class Person
  attr_reader :id
  attr_accessor :name, :age

  def initialize(age, name: 'Unknown', parent_permision: true)
    @id = id
    @name = name
    @age = age
    @parent_permision = parent_permision
  end

  def can_use_services?
    of_age? || @parent_permision
  end

  private

  def of_age?
    age >= 18
  end
end
