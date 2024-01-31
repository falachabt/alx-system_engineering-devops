#!/usr/bin/env ruby

# Accept one argument from the command line
input_string = ARGV[0]

# Use regular expression to match "School"
result = input_string.scan(/School/).join

# Print the result
puts result
