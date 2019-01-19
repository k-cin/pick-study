class Inventory
  attr_reader :books

  def initialize
    @@books = []
  end

  def add(book)
    @@books << book
  end

  def add_all(*args)
    args.each do |book|
      @@books << book
    end
  end

  def destroy(book)
    @@books.delete(book) unless book.nil?
  end

  def to_s
    @@books.each do |book|
      p book.title
    end
  end
  end
