require_relative 'nameable'
# Person class
class Person < Nameable
  attr_reader :id
  attr_accessor :name, :age

  def initialize(age, name, parent_permision: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permision = parent_permision
  end

  def can_use_services?
    of_age? || @parent_permision
  end

  def correct_name
    @name
  end

  private

  def of_age?
    age >= 18
  end
end
