require_relative 'nameable'
require_relative 'rental'
# Person class
class Person < Nameable
  attr_reader :id
  attr_accessor :name, :age, :rentals, :type

  def initialize(type, age, name = 'Unknown', parent_permision: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permision = parent_permision
    @rentals = []
    @type = type
  end

  def can_use_services?
    of_age? || @parent_permision
  end

  def correct_name
    @name
  end

  def add_rental(book, date)
    Rental.new(date, book, self)
  end

  private

  def of_age?
    age >= 18
  end
end
