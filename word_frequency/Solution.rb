require_relative 'frequency'

quote = 'the brown fox jumps over the fence to see the other fox'
frequency = Frequency.frequency(quote)
top_four = frequency.first(4)

puts top_four.each { |word, value| "#{word} : #{value}" }
puts top_four.map { |word, value| "#{word} : #{value}" }
