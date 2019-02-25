require 'net/http'

pages = %w[www.rubycentral.org slashdot.org www.google.com www.pcgamer.com]

threads = pages.map do |page_to_fetch|
  Thread.new(page_to_fetch) do |url|
    http = Net::HTTP.new(url, 80)
    print "Fetching: #{url}\n"
    puts Thread.current
    resp = http.get('/')
    print "Got #{url}: #{resp.message}\n"
  end
end

puts Thread.list
puts '*' * 70
threads.each(&:join)
