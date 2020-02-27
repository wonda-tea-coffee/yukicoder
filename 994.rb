n, k = gets.chomp.split.map(&:to_i)

(n - 1).times do
  gets
end

if k > n
  puts -1
else
  puts k - 1
end
