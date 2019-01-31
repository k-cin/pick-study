require 'stringio'

input = StringIO.new("now is\nthe time\nto learn\nRuby")
output = StringIO.new('', 'w')

input.each_line do |line|
  output.puts line.reverse
end

p output.string
puts output
