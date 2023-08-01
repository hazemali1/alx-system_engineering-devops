#!/usr/bin/env ruby
d = /h[\w$!]{1,2}n/
s = ARGV[0]
if s.match?(d)
  w = s.scan(d)
  q = w.length
  while q > 0 do
    a = s.scan(d)
    print a.join('')
    q -= 1
  end
end
puts ""
