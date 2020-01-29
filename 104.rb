ans = 1
gets.chomp.chars.each do |ci|
  ans *= 2
  ans += 1 if ci == 'R'
end

puts ans