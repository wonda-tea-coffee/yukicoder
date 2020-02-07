n = gets.chomp.to_i
a = []
ans = []
sum = 0
n.times do
  r = gets.chomp.split.map(&:to_i)
  sum += r.shift
  a << r
end
while ans.size < sum
  a.each do |ai|
    next if ai.empty?
    ans << ai.shift
  end
end
puts ans.join(' ')