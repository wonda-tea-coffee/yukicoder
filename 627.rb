t = gets.chomp.to_i
f = true
tn = [0]
t.times { tn << gets.chomp.to_i }
tn.each_cons(2) do |t1, t2|
  f &= (t1 - t2).abs == 1
end
puts f ? 'T' : 'F'