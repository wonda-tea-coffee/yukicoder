n = gets.chomp.to_i
s = gets.chomp

ans = 0
(0...n).to_a.each do |si|
  next if s[si] != 'U'
  # si + 2d < n
  # 2d < n - si
  # d < (n - si) / 2
  lim = (n - si) / 2
  (1..lim).to_a.each do |di|
    next if s[si + di] != 'M'
    next if s[si + 2 * di] != 'G'

    ans += 1
  end
end
puts ans