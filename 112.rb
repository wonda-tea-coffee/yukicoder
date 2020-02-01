n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

if a.uniq.size == 1
  x = a.sum/(n*(n-1))
  if x == 2
    puts "#{n} 0"
  else
    puts "0 #{n}"
  end
  exit
end

max = a.max
c = a.count{|ai| ai == max}
puts "#{c} #{n - c}"