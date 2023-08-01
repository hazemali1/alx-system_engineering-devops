#!/usr/bin/env ruby
d = /School/
s = ARGV[0]
if s.match?(d)
  w = s.scan(d)
  q = w.length
  while q > 0 do
    print "School"
    q -= 1
  end
end
puts ""
