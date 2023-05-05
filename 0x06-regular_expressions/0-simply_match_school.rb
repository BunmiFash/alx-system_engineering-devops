#!/usr/bin/env ruby
# Requirements:
# The regular expression must match School

puts ARGV[0].scan(/School/).join
