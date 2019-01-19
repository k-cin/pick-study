name_array = %w[elk pig bat dog cow fish squirrel shark]
car_hash = { make: 'Ford', model: 'Ranger', year: 1998, color: 'Green' }

car_hash.each_key do |key|
  puts key.class
end

p car_hash[:chicken]

square = 4
square *= square while square <= 100
puts square

square = 10

time_string = 'The time now is 3:06'

time_string.match(/\d*\d:\d\d/) { |x| puts "The time now is #{x}" }

puts 'The time now is 3:06' if time_string =~ /\d*\d:\d\d/

phrase_string = 'the dog walks'

puts 'the dog walks' if phrase_string =~ /the +dog +walks/
puts phrase_string.sub(/walks/, 'barks')

def callback_example
  puts 'starting the method...'
  yield('Dave', 'Thomas')
  yield('Bob', 'Oh')
  puts 'ending the method.....'
end

callback_example { |first, last| puts "Hello there, #{first} #{last}" }

puts "You gave #{ARGV.size} arguments" if ARGV

# ARGF.each { |line| p line.chomp }
