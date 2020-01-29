c = gets.chomp + gets.chomp
ans = 0
cnt = 0
c.chars.each do |ci|
  if ci == 'o'
    cnt += 1
  else
    ans = [ans, cnt].max
    cnt = 0
  end
end
puts [ans, cnt].max