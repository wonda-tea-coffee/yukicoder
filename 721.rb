require 'date'

y, m, d = gets.chomp.split('/').map(&:to_i)

puts (Date.new(y, m, d) + 2).strftime("%Y/%m/%d")