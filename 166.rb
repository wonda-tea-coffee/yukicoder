h, w, n, k = gets.chomp.split.map(&:to_i)
k %= n
puts h * w % n == k ? 'YES' : 'NO'