def kado?(a)
  return false if a.uniq.size != 3

  a.min == a[1] || a.max == a[1]
end

a = gets.chomp.split.map(&:to_i)

if kado?(a)
  puts "INF"
  exit
end

ans = 0

(1..a.max).to_a.each do |p|
  ans += 1 if kado?(a.map{|ai| ai % p})
end

puts ans