n = gets.chomp.to_i
q = []
r = [] * n
(1 << n).times do
  l = gets.chomp.split.map(&:to_i)
  r << l.pop
  q << l
end

if r.uniq.size == 1
  puts "A=" + (r[0] == 0 ? '⊥' : '⊤')
  exit
end

ans = []
r.each.with_index do |ri, i|
  next if ri == 0

  s = []
  q[i].each.with_index(1) do |qj, j|
    s << (qj == 0 ? '¬' : '') + "P_#{j}"
  end
  ans << "(" + s.join('∧') + ")"
end
puts "A=" + ans.join('∨')