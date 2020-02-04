n = gets.chomp.to_i
ans = 0
lim = n**0.5
# puts "lim = #{lim}"
(1..lim.to_i).to_a.each do |d|
  next if n % d > 0
  ans += d + n / d
end

ans -= lim.to_i if lim == lim.to_i
puts ans