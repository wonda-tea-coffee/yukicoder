s = gets.chomp
o = s.index('OOO') || 100
x = s.index('XXX') || 100
puts o < x ? 'East' : o > x ? 'West' : 'NA'