#!/usr/bin/env ruby

# Define the regular expression pattern to extract sender, receiver, and flags
regex_pattern = /\[from:([^[\]]+)\] \[to:([^[\]]+)\] \[flags:([^[\]]+)\]/

# Check if an argument is provided
if ARGV.empty?
  puts "Please provide a log line as an argument."
else
  log_line = ARGV[0]

  # Match the log line against the regular expression
  match = log_line.match(regex_pattern)

  # Check if a match was found
  if match
    sender = match[1]
    receiver = match[2]
    flags = match[3]
    puts "#{sender},#{receiver},#{flags}"
  else
    puts "No match found for the provided log line."
  end
end

