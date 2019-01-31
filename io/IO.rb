IO.foreach('testfile') { |line| puts line }

str = IO.read('testfile')
puts str.length
puts str[0, 30]

arr = IO.readlines('testfile')
puts arr.size

str.each_char do |char|
  puts char
end

str = "\001\002\003" # => '\u0001\u0002\u0003'
str2 = ''
str2 << 1 << 2 << 3  # => '\u0001\u0002\u0003'

p str
p str2
p str.dump
p str2.dump

end1 = "\n"
STDERR << 99 << 'hello' << end1
STDOUT << 77 << 'goodbye' << end1
