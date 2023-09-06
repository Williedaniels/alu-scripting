#!/usr/bin/env ruby

# Step 2: Define the regular expression pattern
regex_pattern = /scho.l/

# Step 3: Check if an argument is provided
if ARGV.empty?
  puts "Please provide an argument."
else
  # Step 4: Apply the regular expression to the argument
  input = ARGV[0]
  if input.match?(regex_pattern)
    puts "Match found: #{input}"
  else
    puts "No match found: #{input}"
  end
end
