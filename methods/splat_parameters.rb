def splats(first = 0, *middle, last)
  puts "arg1=#{first.inspect} arg2=#{middle.inspect} arg3=#{last.inspect}"
end

splats(1, 2, 3, 4, 5, 6, 7, 8, 9, 0)
splats(1)

def ignore_arguments(*) # => ignores arguments
  puts 'hello'
end

ignore_arguments(2, 3, 3, 5, 5, 5)
