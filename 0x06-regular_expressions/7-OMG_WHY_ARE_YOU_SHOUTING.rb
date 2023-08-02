#!/usr/bin/env ruby
d = /[A-Z]/
s = ARGV[0]
if s.match?(d)
  w = s.scan(d)
  a = s.scan(d)
  print a.join('')
  print "\n"
else
  puts ""
end
