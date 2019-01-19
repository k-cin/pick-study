require_relative 'book'
require_relative 'inventory'

class Solution
  book1 = Book.new('The Shining', 54.6, '23530-obobo')
  book2 = Book.new('The Stand', 35, '23580h832t')
  book3 = Book.new('Old Man and the Sea', 23, 'h832hsghwa')
  book4 = Book.new('Tale of Two Cities', 79, '328h9aeeaht8wwet')

  inventory = Inventory.new
  inventory.add_all(book1, book2, book3, book4)
  inventory.destroy(book1)
  inventory.to_s

  book1.price_in_cents = 32_325_085
  puts book1.price_in_cents
end
