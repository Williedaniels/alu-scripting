#!/usr/bin/env ruby

# Step 1: Define the regular expression pattern
regex_pattern = /hb+t+n/

# Step 2: Check if an argument is provided
if ARGV.empty?
  puts "Please provide an argument."
else
  # Step 3: Apply the regular expression to the argument
  input = ARGV[0]

  if input.match?(regex_pattern)
    puts "Match found: #{input}"
  else
    puts "No match found: #{input}"
  end
end

