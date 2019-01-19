class Inventory
  attr_reader :stock

  def initialize(books)
    @stock = []
    @stock = books
  end

  def total_value
    sum = 0.0
    @stock.each { |book| sum += Float(book.price) }
    printout
    Integer(sum + 0.5)
    end

  private

  def printout
    @stock.each { |book| puts "Author: #{book.title}" }
  end
end
