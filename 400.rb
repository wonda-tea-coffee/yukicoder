s = gets.chomp.reverse
ans = ''
s.chars.each do |si|
  if si == '>'
    ans << '<'
  else
    ans << '>'
  end
end
puts ans