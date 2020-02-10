def anzanable?(a)
  a = a.abs

  return false if a % 100 > 0

  while a % 10 == 0 && a > 0
    a /= 10
  end

  a < 10
end

a, b = gets.chomp.split.map(&:to_i)

if anzanable?(a) && anzanable?(b)
  puts a * b / 10
elsif (a * b).abs <= 99999999
  puts a * b
else
  puts "E"
end