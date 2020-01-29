h = {}
h['A'] = gets.chomp.to_i
h['B'] = gets.chomp.to_i
h['C'] = gets.chomp.to_i
h = h.sort{|a, b| a[1]<=>b[1]}.reverse
h.each do |hi|
  puts hi[0]
end