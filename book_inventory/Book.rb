class Book
  attr_accessor :title, :price, :isbn

  def initialize(title, price, isbn)
    String(isbn)
    String(title)
    Float(price)

    if title.class == String
      @title = title
      @price = price
      @isbn = isbn
    else
      abort 'not a valid class'
    end
  end

  def price_in_cents
    Integer(price * 100 + 0.5)
  end

  def price_in_cents=(cents)
    @price = cents / 100.0
  end

  def self.destroy(_book)
    book = nil
  end

  def self.exists?(book)
    !book.nil? ? true : false
  end

  def to_s
    puts "Title: #{title}\nPrice: #{@price}\nISBN: #{isbn}"
  end
  end
