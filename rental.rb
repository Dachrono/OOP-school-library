require_relative 'book'
require_relative 'person'

# rental class
class Rental
  attr_accessor :date, :book, :person

  def initialize(date, book, person)
    @date = date
    @book = book
    @person = person
    person.rentals << self
    book.rentals << self
  end
end
