Thread.abort_on_exception = true
Thread.report_on_exception = true
threads = 4.times.map do |number|
  Thread.new(number) do |i|
    raise 'Boom!' if i == 1

    print "#{i}\n"
  end
end

puts 'Waiting'
threads.each(&:join)
puts 'Done'
