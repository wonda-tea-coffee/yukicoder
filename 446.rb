def valid?(s)
  return false unless s.match?(/\A\d+\z/)
  return false if s.size > 1 && s[0] == '0'

  n = s.to_i
  0 <= n && n <= 12345
end

a = gets.chomp
b = gets.chomp

if valid?(a) && valid?(b)
  puts 'OK'
else
  puts 'NG'
end