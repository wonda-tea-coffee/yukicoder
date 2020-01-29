s, t, u = gets.chomp.split
t = t.to_i
u = u.to_i
ans = s.chars
ans[t] = ''
ans[u] = ''
puts ans.join