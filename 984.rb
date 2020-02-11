P, N = gets.chomp.split.map(&:to_i)

a = []
(1..(P-1)).to_a.each do |i|
  a << N * i % P
end

a.unshift(-1)

ans = 0

(0...P).to_a.each do |i|
  ((i + 1)...P).to_a.each do |j|
    # puts "i = #{i}, j = #{j}"
    if a[i] > a[j]
      ans += 1
    end
  end
end

puts "#{ans} mod 2 = #{ans % 2}"