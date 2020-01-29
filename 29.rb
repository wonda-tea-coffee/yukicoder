n = gets.chomp.to_i
ary = [0]*11
n.times do
  a, b, c = gets.chomp.split.map(&:to_i)
  ary[a] += 1
  ary[b] += 1
  ary[c] += 1
end

sum = 0
1.upto(10) do |i|
  sum += ary[i] / 2
  ary[i] %= 2
end
puts sum + ary.sum/4
