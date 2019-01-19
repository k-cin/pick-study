class BookInStock
  attr_accessor :title, :frmat, :price, :author

  def initialize(title, frmat, price, author)
    @title = title
    @frmat = frmat
    @price = price
    @author = author
  end
end
