f = File.open('podcasts.html')

begin
  while line = f.gets
    puts line
  end
rescue Exception => boom
  puts "It's a boom!: #{boom}"
else
  puts 'zero errors to report'
ensure
  f.close
end
