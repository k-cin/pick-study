count = 0
threads = 10.times.map do |_i|
  Thread.new do
    sleep(rand(0.1))
    Thread.current[:mycount] = count
    count += 1
  end
end

puts Thread.list
puts '*' * 70
threads.each { |t| t.join; print t[:mycount], ', ' }
