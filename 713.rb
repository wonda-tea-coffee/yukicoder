require 'prime'
n = gets.chomp.to_i
puts (1..n).to_a.select{|i| Prime.instance.prime?(i)}.sum