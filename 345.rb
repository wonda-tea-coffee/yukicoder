s = gets.chomp
size = s.size
ans = max = 0xffffffff
size.times do |i|
  (size+1).times do |j|
    next unless s[i, j] =~ /.*c.*w.*w/

    ans = [ans, s[i, j].size].min
  end
end
puts ans == max ? -1 : ans