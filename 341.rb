s = gets.chomp
ans = cnt = 0

s.chars.each.with_index do |si, i|
  if si == '…'
    cnt += 1
  else
    ans = cnt if cnt > ans
    cnt = 0
  end
end

puts [ans, cnt].max