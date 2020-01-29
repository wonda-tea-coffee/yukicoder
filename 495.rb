a = b = 0
s = gets.chomp
i = 0
while i < s.size
  if s[i, 5] == '(^^*)'
    a += 1
  elsif s[i, 5] == '(*^^)'
    b += 1
  end

  i += 5
end

puts "#{a} #{b}"