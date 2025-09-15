#!/usr/bin/env ruby

require 'net/http'
require 'json'
require 'uri'

def get_request(url)
	uri = URI(url)
	response = Net::HTTP.get_response(uri)

	puts "Response status: #{response.code} #{response.message}"

	begin
		parsed = JSON.parse(response.body)
		puts "Response body:"
		puts JSON.pretty_generate(parsed)
	rescue JSON::ParserError
		puts "Response body:"
		puts response.body
	end
end
