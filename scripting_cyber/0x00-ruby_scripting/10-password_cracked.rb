#!/usr/bin/env ruby

require 'digest'

if ARGV.length != 2
	puts "Usage: #{__FILE__} HASHED_PASSWORD DICTIONARY_FILE"
	exit 1
end

hashed_password, dictionary_file = ARGV
hashed_password = hashed_password.strip.downcase

begin
	File.foreach(dictionary_file) do |word|
		word.strip!
		next if word.empty?
		candidate_hash = Digest::SHA256.hexdigest(word).downcase

		if candidate_hash == hashed_password
			puts "Password found: #{word}"
			exit 0
		end
	end

	puts "Password not found in dictionary."
	exit 1
rescue Errno::ENOENT
	puts "Error: Dictionary file not found."
	exit 1
end
