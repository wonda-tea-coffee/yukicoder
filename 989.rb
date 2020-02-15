def find(a, target)
  min_i, max_i = 0, a.size - 1

  return a.size if target < a[min_i]
  return 0 if target > a[max_i]

  mid_i = (max_i + min_i) / 2
  while min_i != max_i
    # puts "min_i = #{min_i}, max_i = #{max_i}"
    if target <= a[mid_i]
      break if max_i == mid_i
      max_i = mid_i
    else
      break if min_i == mid_i
      min_i = mid_i
    end

    mid_i = (max_i + min_i) / 2
  end

  a.size - max_i
end

n, m, k = gets.chomp.split.map(&:to_i)

b = gets.chomp.split
op = b.shift
a = [] * n
b.map!(&:to_i)
n.times do
  a << gets.chomp.to_i
end
b.sort!

ans = 0
a.each do |ai|
  target = op == '+' ? k - ai : k / ai.to_f

  ans += find(b, target)
end
puts ans