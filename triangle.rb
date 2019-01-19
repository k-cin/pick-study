20.times do |num|
  print '$ ' * num
  puts
end

backwards = (1..20).sort { |a, b| b <=> a }
backwards.each do |num|
  print '$ ' * num
  puts
end
