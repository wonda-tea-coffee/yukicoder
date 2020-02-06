n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

(1..(2 * n - 4)).to_a.each do |i|
  0.upto(n - 1) do |p|
    break if 2 * p >= i

    q = i - p
    next if q < 0 || q >= n

    if a[p] > a[q]
      tmp = a[p]
      a[p] = a[q]
      a[q] = tmp
    end
  end
end
puts a.join(' ')