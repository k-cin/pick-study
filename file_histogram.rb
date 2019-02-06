frequency = Hash.new(0)
File.foreach('story.txt') do |line|
  words = line.scan /\w+/
  words.each { |word| frequency[word] += 1 }
end


arr = [{ name: 'bob', color: 'green'}, { name: 'joe', bla: 'blue' }]
arr.each do |hash|
    p hash[:name]
end