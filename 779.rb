require 'date'

y, m, d = gets.chomp.split.map(&:to_i)
s = Date.new(1989, 1,  8)
d = Date.new(y, m, d)
e = Date.new(2019, 4, 30)
puts s <= d && d <= e ? 'Yes' : 'No'