triangular_numbers = Enumerator.new do |yielder|
  number = 0
  count = 1

  loop do
    number += count
    count += 1
    yielder.yield(number)
  end
end.lazy

def Integer.all
  Enumerator.new do |yielder, n: 0|
    loop do
      yielder.yield(n += 1)
    end
  end.lazy
end

def palindrome?(m)
  m = m.to_s
  m == m.reverse
end

p triangular_numbers.select { |x| x % 5 == 0 }.first(5)
p Integer.all.select { |x| x % 5 == 0 && palindrome?(x) }.first(10)
multiples_of_five = ->(n) { n % 5 == 0 }
palindrome = ->(n) { n = n.to_s; n == n.reverse }
p Integer.all.select(&multiples_of_five).select(&palindrome).first(10)
