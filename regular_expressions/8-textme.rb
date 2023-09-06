#!/usr/bin/env ruby

# Define the regular expression pattern to extract sender, receiver, and flags
regex_pattern = /\[from:([^[\]]+)\] \[to:([^[\]]+)\] \[flags:([^[\]]+)\]/

# Read the log file line by line
File.open('log_file.txt', 'r') do |file|
  file.each_line do |line|
    # Match the line against the regular expression
    match = line.match(regex_pattern)

    # Check if a match was found
    if match
      sender = match[1]
      receiver = match[2]
      flags = match[3]
      puts "#{sender},#{receiver},#{flags}"
    end
  end
end

