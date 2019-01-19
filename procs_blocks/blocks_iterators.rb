def fib_up_to_max(max)
  i1 = 1
  i2 = 1

  while i1 <= max
    yield(i1)
    i1, i2 = i2, i1 + i2
  end
end

def two_times
  yield
  yield
end

two_times { puts 'Hello World' }
fib_up_to_max(10_000) { |i1| print "#{i1} " }; puts

list = [100, 200, 300, 400, 500]
p list.find { |x| x > 300 }

puts [1, 3, 5, 7].inject(0) { |sum, element| sum += element }          # 16
puts [1, 3, 5, 7].inject(1) { |product, element| product * element }   # 105
puts [1, 3, 5, 7].inject { |sum, element| sum += element }             # 16
puts [1, 3, 5, 7].inject { |product, element| product * element }      # 105
puts [1, 3, 5, 7].inject(:+)                                           # 16
puts [1, 3, 5, 7].inject(:*)                                           # 105
