require 'open-uri'
require 'nokogiri'

open('https://pragprog.com') do |x|
  puts x.read.scan(/<img alt=".*?" src=".*?"/m).uniq[0, 3]
end

page = open('https://pcgamer.com').read
if page =~ %r{<title>(.*?)</title>}
  puts "Title is #{Regexp.last_match(1).inspect}"
end

# same as above
doc = Nokogiri::HTML(open('https://pragprog.com'))
title = doc.xpath('//title').inner_html
puts "Title is #{title.delete("\n").lstrip}"

# Output the first paragraph in the div with an id="copyright"​
# (nokogiri supports both xpath and css-like selectors)​”
puts doc.css('div#copyright p')

# Output the second hyperlink in the site-links div using xpath and css​
puts "\nSecond hyperlink is"
puts doc.xpath('id("site-links")//a[2]')
puts doc.css('#site-links a:nth-of-type(2)')
