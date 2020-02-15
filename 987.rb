# gets.chomp.to_i
# gets.chomp.split.map(&:to_i)

n, m = gets.chomp.split.map(&:to_i)

b = gets.chomp.split
op = b.shift

a = [] * n
n.times do
  a << gets.chomp
end

a.each do |ai|
  puts b.map{|bi| eval(ai + op + bi)}.join(' ')
end
