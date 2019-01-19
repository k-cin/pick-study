def five(a, b, c, d, e)
  puts "I was passed #{a} #{b} #{c} #{d} #{e}"
end

five('K', 'Z', *(60...63))
