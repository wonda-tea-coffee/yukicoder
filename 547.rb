n = gets.chomp.to_i
s = gets.chomp.split
t = gets.chomp.split
ans = []
n.times do |i|
  next unless ans.empty?
  next if s[i] == t[i]

  ans = [i+1, s[i], t[i]]
end
puts ans