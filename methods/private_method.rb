class TaxCalculator
  def initialize(name, &block)
    @name = name
    @block = block
  end

  def get_tax(amount)
    puts "#{@name} on #{dollar(amount)} is #{dollar(@block.call(amount))}"
  end

  private

  def dollar(input)
    input.to_s.insert(0, '$')
  end
end

sales_tax = TaxCalculator.new('Sales Tax') { |amt| amt * 0.075 }
sales_tax.get_tax(36_000)
