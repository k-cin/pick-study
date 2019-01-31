File.open('testfile', 'w') do |file|
  catch (:done) do
    while line = gets
      throw :done if line =~ /done/i
      file.puts line
    end
  end
end

File.foreach('testfile') do |line|
  puts line
end

File.open('testfile') do |file|
  file.each_line { |line| puts "Got #{line.dump}" }
end

File.open('testfile') do |file|
  file.each_line('is') { |line| puts line.dump }
end

str = ''
str << 1 << 2 << 3
p str
