s = gets.chomp
ans = []
n = s.size
cnt_ok = s.count('o')
cnt_ng = n - cnt_ok
s.chars.each.with_index do |si, i|
  ans << cnt_ok.to_f / (n - i) * 100

  if si == 'o'
    cnt_ok -= 1
  else
    cnt_ng -= 1
  end
end
puts ans