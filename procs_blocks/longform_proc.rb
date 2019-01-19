proc1 = lambda do |a, *b, &c|
  puts "a == #{a.inspect}"
  puts "b == #{b.inspect}"
  c.call
end

proc1.call(1, 2, 3, 4) { puts 'inside block1' }
