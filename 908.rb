s = gets.chomp.chars
f = true
s.each.with_index(1) do |si, i|
  if i % 2 == 1
    f &= 'a' <= si && si <= 'z'
  else
    f &= si == ' ' && i % 2 == 0
  end
end
puts f ? 'Yes' : 'No'