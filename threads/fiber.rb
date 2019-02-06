words = Fiber.new do
  File.foreach('../story.txt') do |line|
    line.scan /\w+/ do |word|
      Fiber.yield word.downcase
    end
  end
  nil
end

counts = Hash.new(0)
while word = words.resume
  counts[word] += 1
end
puts counts

twos = Fiber.new do
  num = 2
  loop do
    Fiber.yield(num) unless num % 3 == 0
    num += 2
  end
end
10.times { print twos.resume, ' ' }
