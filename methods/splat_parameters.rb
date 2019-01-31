def splats(first = 0, *middle, last)
  puts "arg1=#{first.inspect} arg2=#{middle.inspect} arg3=#{last.inspect}"
end

def ignore_arguments(*) # => ignores arguments
  puts 'hello'
end

def search(_field, genre: 'pop', duration: 132, **rest)
  stars = rest[:stars] if rest.key?(:stars)
  tempo = rest[:tempo] if rest.key?(:tempo)
end

def parse_args(*args, **keyword_args)
  first = args.first
  first_name = keyword_args[:first_name]
  last_name = keyword_args[:last_name]
end

splats(1, 2, 3, 4, 5, 6, 7)
splats(1)
ignore_arguments(10, 20, 30)
search(:title)
parse_args(325_235, first_name: 'Johnny', last_name: 'Apple')
