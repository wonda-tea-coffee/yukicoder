require 'date'

ans = 0
s = Date.new(2015, 1, 1)
while s.year == 2015
  ans += 1 if s.month == s.day.digits.sum
  s += 1
end
puts ans