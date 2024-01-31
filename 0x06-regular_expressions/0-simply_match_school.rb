#!/usr/bin/env ruby

# Accept one argument from the command line
input_string = ARGV[0]

# Use regular expression to match "School" as a standalone word
result = input_string.scan(/\bSchool\b/).join

# Print the result
puts result
