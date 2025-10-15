#!/usr/bin/env ruby
require 'json'

def count_user_ids(path)
	file_content = File.read(path)

	data = JSON.parse(file_content)
	count = Hash.new(0)
	data.each do |entry|
		count[entry["userId"]] += 1
	end

	count.sort.each do |count, user_id|
		puts "#{count}: #{user_id}"
	end
end
