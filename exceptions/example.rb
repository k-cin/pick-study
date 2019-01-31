require 'open-uri'

page = 'podcasts'
file_name = "#{page}.html"
web_page = open("https://pragprog.com/#{page}")
output = File.open(file_name, 'w')

begin
  while line = web_page.gets
    output.puts(line)
  end
  output.close
rescue Exception
  STDERR.puts "Failed to download #{page}: #{$ERROR_INFO}"
  output.close
  File.delete(file_name)
  raise
end

begin
  eval name
rescue SyntaxError, NameError => boom
  puts "It's a boom : #{boom})"
rescue StandardError => bang
  puts "It's a bang : #{bang}"
end

