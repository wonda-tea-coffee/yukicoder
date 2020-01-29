s1, t = gets.chomp.split
s = ["I","II","III","IIII","V","VI","VII","VIII","IX","X","XI","XII"]
puts s[(s.index(s1) + t.to_i) % s.size]