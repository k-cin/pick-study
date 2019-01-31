square = 0
sum = 0

[1, 2, 3, 4].each do |val; square|
  square = val * val
  sum += square
  puts sum
end

puts square # => 0
puts sum # => 0
