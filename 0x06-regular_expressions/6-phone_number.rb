#!/usr/bin/env ruby
d = /^\d{10}/
s = ARGV[0]
if s.match?(d) and s.length == 10
  w = s.scan(d)
  q = w.length
  while q > 0 do
    a = s.scan(d)
    print a.join('')
    q -= 1
  end
end
puts ""
