require './book'
require './person'

class Rental
  attr_accessor :date
  
  def initialize(date, book, person)
    raise "Book should be an instance of Book class" unless book.is_a?(Book)
    raise "Person should be an instance of Person class" unless person.is_a?(Person)
    raise "The book already was rented in that date" if book.rentals.map(&:date).include?(date)
    @date = date
    @book = book
    @book.rentals << self
    @person = person
    @person.rents << self
  end
end

person = Person.new(26, "Daniel")
p person

p person.rents?

book = Book.new("The power of now", "Eckhar tolle")
p book

rent = Rental.new("01-12-2023", book, person)
p rent

p person.rents?