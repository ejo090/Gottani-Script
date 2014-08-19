#!/usr/bin/ruby

require 'net/http'
require 'uri'
url = ARGV[0]
response = Net::HTTP.get_response(URI.parse(url))
puts response.code, response.message

if response.code != '200'
  puts 'NG'
end
