s1, s2 = gets.chomp.split
f1 = s1 == 'Sat' || s1 == 'Sun'
f2 = s2 == 'Sat' || s2 == 'Sun'
puts f1 & !f2 ? "8/32" : f1 & f2 ? "8/33" : "8/31"