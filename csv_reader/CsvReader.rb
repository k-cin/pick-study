require 'csv'
require_relative 'bookinstock'

class CsvReader
  attr_reader :books_in_stock

  def initialize
    @books_in_stock = []
  end

  def read_in_csv_data(csv_file_name)
    CSV.foreach(csv_file_name, headers: true) do |row|
      @books_in_stock << BookInStock.new(row['title'], row['format'], row['price'], row['author'])
    end
  end
end
