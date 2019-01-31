i = 0

loop do
  i += 1

  break if i > 21

  next if i.even?

  puts i
end
