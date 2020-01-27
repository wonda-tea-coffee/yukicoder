l = gets.chomp.to_i
n = gets.chomp.to_i
w = gets.chomp.split.map(&:to_i).sort

ans = 0
w.each do |wi|
  l -= wi
  ans += 1 if l >= 0
end

puts ans