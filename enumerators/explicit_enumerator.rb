# generates infinite sequence Enumerator
triangular_numbers = Enumerator.new do |yielder|
  number = 0
  count = 1

  loop do
    number = number += count
    count = count += 1
    yielder.yield(number)
  end
end

def infinite_select(enum)
  Enumerator.new do |yielder|
    enum.each do |value|
      yielder.yield(value) if yield(value)
    end
  end
end

p triangular_numbers.first(10) # first 10 .next
p infinite_select(triangular_numbers) { |number| number % 5 == 0 }.first(5)

lazy = triangular_numbers.lazy
p lazy.select { |number| number % 5 == 0 }.first(5)
