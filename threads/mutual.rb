sum = 0
mutex = Mutex.new
threads = 10.times.map do
  Thread.new do
    250_000.times do
      mutex.synchronize do 
        new_value = sum + 1
        puts "#{Thread.current}: #{new_value}  " if new_value % 250_000 == 0
        sum = new_value
      end
    end
  end
end

threads.each(&:join)
puts "\nsum = #{sum}"
