#!/usr/bin/env ruby

# Define the regular expression pattern
regex_pattern = /^hb[t]+n$/

# Check if an argument is provided
if ARGV.empty?
  puts "Please provide an argument."
else
  # Apply the regular expression to the argument
  input = ARGV[0]

  if input.match?(regex_pattern)
    puts "Match found: #{input}"
  else
    puts "No match found: #{input}"
  end
end
