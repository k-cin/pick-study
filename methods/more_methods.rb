def double(p1)
  yield(p1 * 2)
end

double(10) { |x| puts "yielded is #{x}" }

def meth_three
  100.times do |num|
    square = num * num
    return num, square if square > 1000
  end
end

meth_three         # => [32, 1024]
a, b = meth_three  # => 32, 1024

calc = ->(n) { n * n }
puts (1..3).collect(&calc).join(', ') # => 1, 4, 9
