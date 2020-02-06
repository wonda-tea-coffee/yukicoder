n = gets.chomp.to_i
a = []
b = []
x = []
y = []
cnts = []

n.times do
  ai, bi = gets.chomp.split.map(&:to_i)
  a << ai
  b << bi
end

m = gets.chomp.to_i

m.times do
  xi, yi = gets.chomp.split.map(&:to_i)
  x << xi
  y << yi
end

n.times do |i|
  m.times do |j|
    if a[i] >= x[j] && b[i] <= y[j]
      cnts[j] ||= 0
      cnts[j] += 1
    end
  end
end

# p cnts

ans = []
max = 0
cnts.each.with_index do |ci, i|
  next if ci.nil?
  if ci > max
    ans.clear
    ans << i
    max = ci
  elsif ci == max
    ans << i
  end
end

puts ans.empty? ? 0 : ans.map{|v| v+1}