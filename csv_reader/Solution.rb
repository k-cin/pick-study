require_relative 'bookinstock'
require_relative 'csvreader'
require_relative 'inventory'

class Solution
  csv_reader = CsvReader.new

  ARGV.each do |csv_file_name|
    STDERR.puts "Processing.......#{csv_file_name}"
    csv_reader.read_in_csv_data(csv_file_name.to_s)
  end

  stock = Inventory.new(csv_reader.books_in_stock)

  puts stock.total_value

  puts RubyVM::MJIT.enabled?
end
