#!/usr/bin/env ruby
d = /from:(.*?)\]/
x = /to:(.*?)\]/
z = /flags:(.*?)\]/
s = ARGV[0]
print s.scan(d).join('')
print ","
print s.scan(x).join('')
print ","
print s.scan(z).join('')
puts ""
