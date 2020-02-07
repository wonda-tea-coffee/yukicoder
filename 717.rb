gets.chomp
s = gets.chomp
t = gets.chomp

sa = s.count('A')
sb = s.count('B')
ta = t.count('A')
tb = t.count('B')
puts [sa, ta].min + [sb, tb].min