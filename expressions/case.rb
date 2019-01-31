kind = case year = 1931
       when 1850..1889 then 'Blues'
       when 1910..1929 then 'New Orleans Jazz'
       when 1930..1939 then 'Swing'
       else 'Jazz'
       end

case line = 'title=Moody+Blues'
when /title=(.*)/ then puts "Title is (#{Regexp.last_match(1)})"
when /track=(.*)/ then puts "Track is (#{Regexp.last_match(1)})"
end

case number = 17
when 3, 6, 9
  puts '3, 6, 9'
when 10, 15, 20
  puts '10, 15, 20'
when 17, 18
  puts '17, 18'
else puts 'not found'
end
