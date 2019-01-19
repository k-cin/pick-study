p Rational(3, 4) * Rational(2, 3)
p Complex(3, 4) * Complex(2, 3)
p Integer('100') + Integer('200')

1.upto(5) { |x| print x, ' ' }
99.downto(95) { |x| print x, ' ' }
50.step(80, 5) { |x| print x, ' ' }

enum = 60.step(5, -5)
enum.first(3)
7.downto(0).with_index { |num, index| puts "#{num}: #{index}" }
# Iterators return an Enumerator object if no block given
