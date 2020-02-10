a, b, c = gets.chomp.split.map(&:to_i)

lim = a + 10 * b
(1..lim).to_a.each do |i|
  (0..a).to_a.each do |j|
    (0..b).to_a.each do |k|
      next if i > j + 10 * k
      tr = j + 10 * k - i

      if a - j + tr / 10 + b - k + tr % 10 == c
        puts i
        exit
      end
    end
  end
end

puts "Impossible"