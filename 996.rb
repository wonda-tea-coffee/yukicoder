s = ''
1000.times {s << 'phnome'.chars.sample}

ans = 0
while true
  puts s
  f = false
  t = s.gsub("phnom", "penh")

  f |= s != t

  ans += s.size - t.size

  u = t.gsub("h", "").gsub("e", "h")

  f |= t != u

  break unless f
  ans += 1
  s = u
end
puts ans