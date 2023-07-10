#!/usr/bin/env ruby
# Regular expression that oes what Guillame does
puts ARGV[0].scan(/\[from:(.*?)\]\s\[to:(.*?)\]\s\[flags:(.*?)\]/).join(',')
