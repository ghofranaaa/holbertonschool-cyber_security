#!/usr/bin/env ruby
require 'json'

def merge_json_files(file1_path, file2_path)
	file_content1 = File.read(file1_path)
	file1_data = JSON.parse(file_content1)

	file_content2 = File.read(file2_path)
	file2_data = JSON.parse(file_content2)

	merged = file1_data + file2_data

	File.write(file2_path, JSON.pretty_generate(merged))
end