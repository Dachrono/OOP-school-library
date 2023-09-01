require_relative 'rental'

# book class
class Book
  attr_accessor :title, :author, :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def rental_new(person, date)
    Rental.new(date, self, person)
  end
end
