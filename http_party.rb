require 'httparty'
require 'pp'

class SlashDot
  include HTTParty
  base_uri('http://www.slashdot.org')
  format(:html)
end

response = HTTParty.get('https://google.com')
puts '*' * 70
puts response.message
