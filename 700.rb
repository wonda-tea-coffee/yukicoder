n, m = gets.chomp.split.map(&:to_i)
f = false
n.times do
  f ||= !gets.chomp.index('LOVE').nil?
end
puts f ? 'YES' : 'NO'