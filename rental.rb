require './book'

class Rental
  attr_accessor :date
  
  def initialize(date, book)
    raise "Book should be an instance of Book classs" unless book.is_a?(Book)
    raise "The book already was rented in that date" if book.rentals.map(&:date).include?(date)
    @date = date
    @book = book
    @book.rentals << self
  end
end

book = Book.new("The power of now", "Eckhar tolle")
p book

rent = Rental.new("01-12-2023", book)
p rent

rent2 = Rental.new("01-12-2023", book)
p rent2
